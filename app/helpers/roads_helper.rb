module RoadsHelper

    def checkpoints_options(road, f)
        if road.new_record?
            render partial: "new_checkpoints", locals: {f: f}
        else
            render partial: "existing_checkpoints", locals: {f: f}
        end
    end
end
