# created class that has a task of boxing
class Boxing
    # set our boxers first punch
    def set_punch punch 
        @punch = punch 
    end

    def set_knock_out ko
        @ko = ko
    end
    # get our boxers first punch
    def punch
        @punch
        # "jab"
    end

    def ko
        @ko
    end
end 

bubba = Boxing.new
filippo = Boxing.new
steveo = Boxing.new
filippo.set_punch "Jab"
bubba.set_punch "hook"
steveo.set_punch "uppercut"
steveo.set_knock_out "TKO"
filippo.set_knock_out "Finished him!"
p filippo.punch
p filippo.ko
p bubba.punch
p steveo.punch
p steveo.ko