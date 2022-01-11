require_relative "elementos_page"

class CalculatorPage < Elementos
    include Capybara::DSL

    def open
        visit "/"
    end

    def submitInteger(integer)
        textbox.set integer
        click_button "Calculate!"
    end

    def factorialCalculator(num)
        (1..num).inject(:*) || 1
    end

    def calculatorMessage
        sleep 1
        return result.text
    end

    def accessTerms
        click_on "Terms and Conditions" 
    end

    def accessPrivacy
        click_on "Privacy" 
    end

    def pageText(text)
        return page.has_text?(text)
    end
end

