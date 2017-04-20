Dado(/^que eu acesse o site sodexo club$/) do
  visit('http://www.sodexoclub.com.br/')
  find(:id, 'cboxClose').click
  sleep 3
end

Dado(/^clique no botao de logar$/) do
  find(:xpath, '//*[@id="bs-example-navbar-collapse-2"]/ul[2]/li[3]/a/div/span').click
  sleep 2
end

Quando(/^eu preencher os campos com email e senha$/) do
  within_frame (find('iframe.cboxIframe')) do #encontra os elementos dentro do modal
  fill_in 'email', :with => 'automacao@testes.com'
  fill_in 'senha', :with => 'Senha1234'
  click_on('Entrar').send_keys :enter
end 
end

Então(/^o cadastro deve ser realizado com sucesso$/) do
 sleep 4
 page.driver.browser.switch_to.alert.accept
 expect(find('div.btn-nav-login').text).to eq "OLÁ, AUTOMAÇÃO"
end