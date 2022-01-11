Dado('que esteja na página da calculadora fatorial') do
    @calculator_page.open
end

Quando('submeto os valores {string}') do |value|
    @value = value.to_i
    @calculator_page.submitInteger(value)
end

Então('verifico se o resultado é exibido corretamente e a mensagem é exibida {string}') do |message|
    factorial_result = @calculator_page.factorialCalculator(@value).to_s
    expect(@calculator_page.calculatorMessage).to eql message
    expect(@calculator_page.calculatorMessage).to have_text factorial_result
end

Então('verifico se a mensagem é exibida {string}') do |message|
    expect(@calculator_page.calculatorMessage).to eql message
end