class Elementos < SitePrism::Page
    include Capybara::DSL

    element :textbox, "#number"
    element :result, "#resultDiv"

end