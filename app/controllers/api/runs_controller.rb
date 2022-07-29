class Api::RunsController < ApplicationController
    def index
        render "index"
    end
    
    def show
        render 'show'     
    end

    def create
        render 'create'  
    end

    def edit
        render 'edit'
    end

    def delete
        render 'delete'
    end
end
