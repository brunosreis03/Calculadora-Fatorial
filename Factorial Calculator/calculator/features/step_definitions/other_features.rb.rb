Quando('seleciono o {string}') do |link|
    case link
    when "privacy"
        @calculator_page.accessPrivacy
        sleep 1
    when "terms"
        @calculator_page.accessTerms
        sleep 1
    end
end

Então('verifico se o texto é exibido {string}') do |message|
    expect(@calculator_page.pageText(message)).to be_truthy
end