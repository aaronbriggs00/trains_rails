class Api::RunsController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index
        @runs = Run.all
        render json: { runs: @runs }, status: :ok
    end
    
    def show
        @run = Run.find(params[:id])
        render json: { run: @run }, status: :ok    
    end

    def create
        @run = Run.new(
            line: params[:line],
            route: params[:route],
            run_number: params[:run_number],
            operator_id: params[:operator_id]
        )
        if @run.save
            render json: { run: @run }, status: :ok   
        else
            render json: { errors: @run.errors.full_messages }, status: :bad_request
        end  
    end

    def update
        @run = Run.find(params[:id])
        @run.line = params[:line] || @run.line
        @run.route = params[:route] || @run.route
        @run.run_number = params[:run_number] || @run.run_number
        @run.operator_id = params[:operator_id] || @run.operator_id
        if @run.save
            render json: { run: @run }, status: :ok   
        else
            render json: { errors: @run.errors.full_messages }, status: :bad_request
        end  
    end

    def destroy
        Run.find(params[:id]).destroy
        render json: { message: 'run successfully destroyed' }, status: :ok
    end
end
