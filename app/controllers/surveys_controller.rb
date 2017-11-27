require 'matrix'

class SurveysController < ApplicationController

    # called from index
	def new
		@survey=Survey.new
	end

    # redirects to Thank You page
	def thank
        @fcm = ($global_fcm * 100).round(2)
        @fcr = ($global_fcr * 100).round(2)
        @fa = ($global_fa * 100).round(2)

        @user_type = $global_user_type

        if (@user_type == 'user')
            @result = Survey.where("user_type = 'user'")
        elsif (@user_type == 'developer')
            @result = Survey.where("user_type = 'developer'")
        end

        fcm_sum = 0.0
        fcr_sum = 0.0
        fa_sum = 0.0

        for x in 0..(@result.size-1)
            fcm_sum = fcm_sum + @result[x].fcm_weight
            fcr_sum = fcr_sum + @result[x].fcr_weight
            fa_sum = fa_sum + @result[x].fa_weight
        end

        @fcm_ave = ((fcm_sum / @result.size) * 100).round(2)
        @fcr_ave = ((fcr_sum / @result.size) * 100).round(2)
        @fa_ave = ((fa_sum / @result.size) * 100).round(2)

	end

    # called when the Submit button is clicked
	def create
		@survey=Survey.new(survey_params)

   		if @survey.save
     	  flash[:notice]="Thank you for answering this survey!"
     	  flash[:color]="valid"


            # compute for weights of the quality characteristics

            if (@survey.fcm_fcr >= 5)
                @survey.fcm_fcr = @survey.fcm_fcr - 4
            else
                @survey.fcm_fcr = 1 / (@survey.fcm_fcr - 6).abs
            end

            if (@survey.fcm_fa >= 5)
                @survey.fcm_fa = @survey.fcm_fa - 4
            else
                @survey.fcm_fa = 1 / (@survey.fcm_fa - 6).abs
            end

            if (@survey.fcr_fa >= 5)
                @survey.fcr_fa = @survey.fcr_fa - 4
            else
                @survey.fcr_fa = 1 / (@survey.fcr_fa - 6).abs
            end

            # save to matrix the values from the form
            matrix1 = Matrix[
                [1, @survey.fcm_fcr, @survey.fcm_fa],
                [1.0/@survey.fcm_fcr, 1, @survey.fcr_fa],
                [1.0/@survey.fcm_fa, 1.0/@survey.fcr_fa, 1]
            ]

            ei_matrix = Matrix::EigenvalueDecomposition.new(matrix1)
            ei_values = ei_matrix.eigenvalues()
            ei_vectors = ei_matrix.eigenvectors()

            # If the eigenvalue is a complex number, change it to a -100
            for i in 0..(ei_values.size-1)
                if ei_values[i].class == Complex
                    ei_values[i] = -100
                end
            end

            # get the largest eigenvalue
            largest_ei_index = ei_values.rindex(ei_values.max)

            # solve for the normalize weight vector
            not_normalized = ei_vectors[largest_ei_index]

            # get the sum of the value in the not_normalized weights vector
            sum = 0.0
            for x in not_normalized
                sum = sum + x
            end
            normalized = not_normalized / sum
            # normalized = not_normalized.normalize

            # assign the computed weights to the params for database
            @survey.fcm_weight = normalized[0].abs
            @survey.fcr_weight = normalized[1].abs
            @survey.fa_weight = normalized[2].abs

            $global_fcm = @survey.fcm_weight
            $global_fcr = @survey.fcr_weight
            $global_fa = @survey.fa_weight

            $global_user_type = @survey.user_type

            @survey.save

            redirect_to :action => 'thank'
    	else
     	  flash[:notice]="Please answer all fields."
     	  flash[:color]="invalid"
        render :new
    	end	
	end 

	private
	def survey_params
        params.require(:survey).permit(:name,:user_type,:fcm_fcr,:fcm_fa,:fcr_fa,:fcm_weight,:fcr_weight,:fa_weight)
    end

end
