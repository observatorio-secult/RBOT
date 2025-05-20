if(require(tidyverse) == F) install.packages("tidyverse"); require(tidyverse)
if(require(here) == F) install.packages("here"); require(here)
if(require(readxl) == F) install.packages("readxl"); require(readxl)
if(require(openxlsx) == F) install.packages("openxlsx"); require(openxlsx)
if(require(scales) == F) install.packages("scales"); require(scales)
if(require(splitstackshape) == F) install.packages("splitstackshape"); require(splitstackshape)
setwd(here("Bancos"))


# banco <- banco %>% 
#   transmute(id = ,
#             evento = ,
#             nome_pesquisador = ,
#             data_pesquisa = ,
#             resid_turista = ,
#             idade = ,
#             estado = ,
#             municipio = ,
#             pais = ,
#             pernoite = ,
#             cidade = ,
#             qtd_noite = ,
#             hospedagem = ,
#             transporte = ,
#             acesso = ,
#             rodovia = ,
#             hosp_rank = ,
#             gastronomia = ,
#             limpeza = ,
#             atividades = ,
#             outra_atividade = ,
#             motivo = ,
#             outra_motivo = ,
#             oficina = ,
#             interacao = ,
#             outra_atracao = ,
#             divulgacao = ,
#             nome_rede = ,
#             nome_rede_qual = ,
#             acompanhante = ,
#             outra_acompanhante = ,
#             gasto_alimento = ,
#             gasto_transp = ,
#             gasto_compras = ,
#             gasto_cultura = ,
#             qtd_gastos = ,
#             dia_evento = ,
#             avaliacao_local = ,
#             avaliacao_infra = ,
#             avaliacao_org = ,
#             avaliacao_divulg = ,
#             avaliacao_comida = ,
#             avaliacao_preco = ,
#             avaliacao_produtos = ,
#             avaliacao_prog = ,
#             avaliacao_representacao = ,
#             avaliacao_diversidade = ,
#             avaliacao_aproximacao = ,
#             avaliacao_acolhimento = ,
#             avaliacao_seguranca = ,
#             avaliacao_acessibilidade = ,
#             avaliacao_limpeza = ,
#             avaliacao_geral = ,
#             melhor_ativ = ,
#             volta = ,
#             sexo = ,
#             lgbt = ,
#             raca = ,
#             escolaridade = ,
#             renda = )



bh <- read_xls("BD_BH_STOCK_FESTIVAL_Pesquisa_em_rede.xls")

blumenau <- read_xlsx("Pesquisa Eventos BLUMENAU OKTOBERFEST.xlsx")

passira <- read_xlsx("Formulário Pesquisa em Rede - RBOT _ PASSIRA (respostas).xlsx")

virada <- read_xlsx("Virada 2024 Base de dados_Pesquisa_em_rede.xlsx")

congadas <- read_xlsx("BANCO DE DADOS - CONGADAS 2..xlsx")

natal_bem <- read_xlsx("BANCO DE DADOS Pesquisa em Rede RBOT_ Natal do BEM (respostas)..xlsx")

surubim <- read_xlsx("Formulário Pesquisa em Rede - RBOT (respostas SURUBIM).xlsx")

natal <- read_xlsx("Perfil do Visitante (NATAL) - RBOT (respostas).xlsx")

largo <- read_xlsx("PESQUISA EM REDE NATAL NO LARGO 2024 (respostas) (2).xlsx")

japao <- read_xlsx("PESQUISA EM REDE RBOT - Festival do Japão de Mato Grosso do Sul (respostas) (1).xlsx")

boi <- read_xlsx("PESQUISA EM REDE RBOT (respostas) (2).xlsx")

quixaba <- read_xlsx("Formulário Pesquisa em Rede - RBOT - Quixaba  (respostas).xlsx")

carnaval <- read_xlsx("Perfil do Visitante (CARNAVAL RN) - Rbot (respostas).xlsx")

martires <- read_xlsx("Perfil do Visitante (Mártires) - RBOT (respostas).xlsx")



passira <- passira %>% 
  transmute(id = `Carimbo de data/hora`,
            evento = `NOME DO EVENTO`,
            nome_pesquisador = `NOME DO PESQUISADOR`,
            data_pesquisa = `DATA DE PESQUISA`,
            resid_turista = `Você é ?
`,
            idade =`1. Qual sua idade? (maior de 16 anos)` ,
            estado = `2. Qual a sua residência permanente/onde você mora?`,
            municipio = `3. Se Pernambuco, qual município?`,
            pais = `4. Se “Outro país”, qual?`,
            pernoite = `5. Você pretende pernoitar (dormir) nesta cidade?`,
            cidade = `6. Qual outra cidade?`,
            qtd_noite = `7. Se sim, por quantos dias você pretende dormir nesta cidade?`,
            hospedagem = `8. Onde você pretende se hospedar?`,
            transporte = `9. Qual o meio de transporte utilizado para chegar ao destino?`,
            acesso = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Acesso (rodovias)]`,
            rodovia = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Sinalização (Rodovias)]`,
            hosp_rank = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Hospedagem]`,
            gastronomia = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Gastronomia/Restaurantes]`,
            limpeza = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Limpeza Urbana]`,
            atividades = `11. Quais outras atividades você realizou ou pretende realizar nesta cidade?`,
            outra_atividade = `11.1 Se "Outro", qual?`,
            motivo = `12. Qual o principal motivo que fez você vir ao evento?`,
            outra_motivo = `12.1 Se "Outro", qual?`,
            oficina = `13. Você participou de alguma oficina cultural durante o festival?`,
            interacao = `14. O festival proporcionou uma oportunidade para você interagir com artistas e artesãos locais?`,
            outra_atracao = `15. Você participou ou visitou alguma outra atividade do evento além da atração principal?`,
            divulgacao = `16. Como você ficou sabendo do evento?`,
            nome_rede = `17. Se redes sociais e internet, qual rede e perfil? (Resposta Única e Espontânea)`,
            nome_rede_qual = `17.1 Se outro site ou perfil, qual?`,
            acompanhante = `18. Com quem você veio ao evento?`,
            outra_acompanhante = `18.1 Se "Outro", qual?`,
            gasto_alimento = `19. Qual será seu gasto estimado com alimentação:`,
            gasto_transp = `19.1. Qual será seu gasto estimado com transporte interno:`,
            gasto_compras = `19.2. Qual será seu gasto estimado com compras (feira):`,
            gasto_cultura = `19.3. Qual será seu gasto estimado com produtos e serviços culturais:`,
            qtd_gastos = `20. Contando com você, quantas pessoas estão incluídas nesses gastos?`,
            dia_evento = `21. Quantos dias participou ou irá participar do evento? (caso o evento seja apenas de um dia, esta pergunta já tem resposta automática de 1)`,
            avaliacao_local = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Local do evento]`,
            avaliacao_infra = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Infraestrutura do evento]`,
            avaliacao_org = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Organização do evento]`,
            avaliacao_divulg = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Divulgação]`,
            avaliacao_comida = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Alimentos e bebidas(qualidade)]`,
            avaliacao_preco = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Preços praticados no evento]`,
            avaliacao_produtos = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Artesanato e/ou Produtos comercializados]`,
            avaliacao_prog = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Programação cultural]`,
            avaliacao_representacao = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Representatividade da cultura local]`,
            avaliacao_diversidade = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Diversidade das atividades culturais]`,
            avaliacao_aproximacao = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Aproximação com a cultura local]`,
            avaliacao_acolhimento = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Acolhimento aos visitantes]`,
            avaliacao_seguranca = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Sensação de segurança]`,
            avaliacao_acessibilidade = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Acessibilidade /PCD no evento]`,
            avaliacao_limpeza = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Limpeza geral(ambiente evento)]`,
            avaliacao_geral = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Avaliação Geral do Evento]`,
            melhor_ativ = `23. Qual atividade cultural você mais gostou no evento?`,
            volta = `24. Você voltaria ao festival no próximo ano?`,
            sexo = `25. Qual sexo do respondente?`,
            lgbt = `26. Você é uma pessoa LGBTQIAPN+?`,
            raca = `27. Qual a sua identidade étnico racial?`,
            escolaridade = `28. Qual sua escolaridade?`,
            renda =`29. Sabendo que o salário mínimo é de R$ 1.420,00, sua renda familiar atual é de quantos salários mínimos? (cartão-resposta, opção de 1 a 8 ou mostra tablet e botão próxima)` )


quixaba <- quixaba %>% 
  transmute(id = `Carimbo de data/hora`,
            evento = `NOME DO EVENTO`,
            nome_pesquisador = `NOME DO PESQUISADOR`,
            data_pesquisa = `DATA DE PESQUISA`,
            resid_turista = `Você é ?
`,
            idade =`1. Qual sua idade? (maior de 16 anos)` ,
            estado = `2. Qual a sua residência permanente/onde você mora?`,
            municipio = `3. Se Pernambuco, qual município?`,
            pais = `4. Se “Outro país”, qual?`,
            pernoite = `5. Você pretende pernoitar (dormir) nesta cidade?`,
            cidade = `6. Qual outra cidade?`,
            qtd_noite = `7. Se sim, por quantos dias você pretende dormir nesta cidade?`,
            hospedagem = `8. Onde você pretende se hospedar?`,
            transporte = `9. Qual o meio de transporte utilizado para chegar ao destino?`,
            acesso = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Acesso (rodovias)]`,
            rodovia = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Sinalização (Rodovias)]`,
            hosp_rank = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Hospedagem]`,
            gastronomia = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Gastronomia/Restaurantes]`,
            limpeza = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Limpeza Urbana]`,
            atividades = `11. Quais outras atividades você realizou ou pretende realizar nesta cidade?`,
            outra_atividade = `11.1 Se "Outro", qual?`,
            motivo = `12. Qual o principal motivo que fez você vir ao evento?`,
            outra_motivo = `12.1 Se "Outro", qual?`,
            oficina = `13. Você participou de alguma oficina cultural durante o festival?`,
            interacao = `14. O festival proporcionou uma oportunidade para você interagir com artistas e artesãos locais?`,
            outra_atracao = `15. Você participou ou visitou alguma outra atividade do evento além da atração principal?`,
            divulgacao = `16. Como você ficou sabendo do evento?`,
            nome_rede = `17. Se redes sociais e internet, qual rede e perfil? (Resposta Única e Espontânea)`,
            nome_rede_qual = `17.1 Se outro site ou perfil, qual?`,
            acompanhante = `18. Com quem você veio ao evento?`,
            outra_acompanhante = `18.1 Se "Outro", qual?`,
            gasto_alimento = `19. Qual será seu gasto estimado com alimentação:`,
            gasto_transp = `19.1. Qual será seu gasto estimado com transporte interno:`,
            gasto_compras = `19.2. Qual será seu gasto estimado com compras (feira):`,
            gasto_cultura = `19.3. Qual será seu gasto estimado com produtos e serviços culturais:`,
            qtd_gastos = `20. Contando com você, quantas pessoas estão incluídas nesses gastos?`,
            dia_evento = `21. Quantos dias participou ou irá participar do evento? (caso o evento seja apenas de um dia, esta pergunta já tem resposta automática de 1)`,
            avaliacao_local = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Local do evento]`,
            avaliacao_infra = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Infraestrutura do evento]`,
            avaliacao_org = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Organização do evento]`,
            avaliacao_divulg = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Divulgação]`,
            avaliacao_comida = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Alimentos e bebidas(qualidade)]`,
            avaliacao_preco = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Preços praticados no evento]`,
            avaliacao_produtos = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Artesanato e/ou Produtos comercializados]`,
            avaliacao_prog = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Programação cultural]`,
            avaliacao_representacao = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Representatividade da cultura local]`,
            avaliacao_diversidade = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Diversidade das atividades culturais]`,
            avaliacao_aproximacao = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Aproximação com a cultura local]`,
            avaliacao_acolhimento = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Acolhimento aos visitantes]`,
            avaliacao_seguranca = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Sensação de segurança]`,
            avaliacao_acessibilidade = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Acessibilidade /PCD no evento]`,
            avaliacao_limpeza = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Limpeza geral(ambiente evento)]`,
            avaliacao_geral = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Avaliação Geral do Evento]`,
            melhor_ativ = `23. Qual atividade cultural você mais gostou no evento?`,
            volta = `24. Você voltaria ao festival no próximo ano?`,
            sexo = `25. Qual sexo do respondente?`,
            lgbt = `26. Você é uma pessoa LGBTQIAPN+?`,
            raca = `27. Qual a sua identidade étnico racial?`,
            escolaridade = `28. Qual sua escolaridade?`,
            renda =`29. Sabendo que o salário mínimo é de R$ 1.420,00, sua renda familiar atual é de quantos salários mínimos? (cartão-resposta, opção de 1 a 8 ou mostra tablet e botão próxima)` )


surubim <- surubim %>% 
  transmute(id = `Carimbo de data/hora`,
            evento = `NOME DO EVENTO`,
            nome_pesquisador = `NOME DO PESQUISADOR`,
            data_pesquisa = `DATA DE PESQUISA`,
            resid_turista = `Você é ?
`,
            idade =`1. Qual sua idade? (maior de 16 anos)` ,
            estado = `2. Qual a sua residência permanente/onde você mora?`,
            municipio = `3. Se Pernambuco, qual município?`,
            pais = `4. Se “Outro país”, qual?`,
            pernoite = `5. Você pretende pernoitar (dormir) nesta cidade?`,
            cidade = `6. Qual outra cidade?`,
            qtd_noite = `7. Se sim, por quantos dias você pretende dormir nesta cidade?`,
            hospedagem = `8. Onde você pretende se hospedar?`,
            transporte = `9. Qual o meio de transporte utilizado para chegar ao destino?`,
            acesso = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Acesso (rodovias)]`,
            rodovia = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Sinalização (Rodovias)]`,
            hosp_rank = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Hospedagem]`,
            gastronomia = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Gastronomia/Restaurantes]`,
            limpeza = `10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Limpeza Urbana]`,
            atividades = `11. Quais outras atividades você realizou ou pretende realizar nesta cidade?`,
            outra_atividade = `11.1 Se "Outro", qual?`,
            motivo = `12. Qual o principal motivo que fez você vir ao evento?`,
            outra_motivo = `12.1 Se "Outro", qual?`,
            oficina = `13. Você participou de alguma oficina cultural durante o festival?`,
            interacao = `14. O festival proporcionou uma oportunidade para você interagir com artistas e artesãos locais?`,
            outra_atracao = `15. Você participou ou visitou alguma outra atividade do evento além da atração principal?`,
            divulgacao = `16. Como você ficou sabendo do evento?`,
            nome_rede = `17. Se redes sociais e internet, qual rede e perfil? (Resposta Única e Espontânea)`,
            nome_rede_qual = `17.1 Se outro site ou perfil, qual?`,
            acompanhante = `18. Com quem você veio ao evento?`,
            outra_acompanhante = `18.1 Se "Outro", qual?`,
            gasto_alimento = `19. Qual será seu gasto estimado com alimentação:`,
            gasto_transp = `19.1. Qual será seu gasto estimado com transporte interno:`,
            gasto_compras = `19.2. Qual será seu gasto estimado com compras (feira):`,
            gasto_cultura = `19.3. Qual será seu gasto estimado com produtos e serviços culturais:`,
            qtd_gastos = `20. Contando com você, quantas pessoas estão incluídas nesses gastos?`,
            dia_evento = `21. Quantos dias participou ou irá participar do evento? (caso o evento seja apenas de um dia, esta pergunta já tem resposta automática de 1)`,
            avaliacao_local = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Local do evento]`,
            avaliacao_infra = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Infraestrutura do evento]`,
            avaliacao_org = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Organização do evento]`,
            avaliacao_divulg = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Divulgação]`,
            avaliacao_comida = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Alimentos e bebidas(qualidade)]`,
            avaliacao_preco = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Preços praticados no evento]`,
            avaliacao_produtos = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Artesanato e/ou Produtos comercializados]`,
            avaliacao_prog = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Programação cultural]`,
            avaliacao_representacao = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Representatividade da cultura local]`,
            avaliacao_diversidade = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Diversidade das atividades culturais]`,
            avaliacao_aproximacao = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Aproximação com a cultura local]`,
            avaliacao_acolhimento = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Acolhimento aos visitantes]`,
            avaliacao_seguranca = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Sensação de segurança]`,
            avaliacao_acessibilidade = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Acessibilidade /PCD no evento]`,
            avaliacao_limpeza = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Limpeza geral(ambiente evento)]`,
            avaliacao_geral = `22. Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 Não se aplica ou não sei [Avaliação Geral do Evento]`,
            melhor_ativ = `23. Qual atividade cultural você mais gostou no evento?`,
            volta = `24. Você voltaria ao festival no próximo ano?`,
            sexo = `25. Qual sexo do respondente?`,
            lgbt = `26. Você é uma pessoa LGBTQIAPN+?`,
            raca = `27. Qual a sua identidade étnico racial?`,
            escolaridade = `28. Qual sua escolaridade?`,
            renda =`29. Sabendo que o salário mínimo é de R$ 1.420,00, sua renda familiar atual é de quantos salários mínimos? (cartão-resposta, opção de 1 a 8 ou mostra tablet e botão próxima)` )

virada <- virada %>% 
  transmute(id = paste0("virada",row.names(virada)),
            evento = "virada",
            nome_pesquisador = NA,
            data_pesquisa = NA,
            resid_turista = `2. Qual a sua residência permanente/onde você mora?`,#alterar outra cidade e RMBH para turista
            idade = `1. Qual é a sua idade?`,
            estado = `2.2 Estado:`,
            municipio1 = `2.2 Outra cidade:`,
            municipio2 = `2.2 Cidade da região metropolitana de BH/RMBH:`,
            municipio3 = `2.2 Estado:`,
            pais = `2.1. Outro país:`,
            pernoite = `3. Você pretende pernoitar (dormir) em BH?`,
            cidade = NA,
            qtd_noite = `4. Se SIM, por quantos dias você pretende dormir na cidade?`,
            hospedagem = `5. Onde você pretende se hospedar?`,
            transporte = `6. Qual o meio de transporte utilizado para chegar à cidade?`,
            acesso = `I_1_P10 - (Acesso (Rodovias)) 10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.`,
            rodovia = `I_2_P10 - (Sinalização (Rodovias)) 10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.`,
            hosp_rank = `I_3_P10 - (Hospedagem) 10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.`,
            gastronomia = `I_4_P10 - (Gastronomia/Restaurantes) 10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.`,
            limpeza = `I_5_P10 - (Limpeza Urbana) 10. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo a 1 (um) péssimo.`,
            atividades = NA,
            outra_atividade = NA,
            motivo = `26. Qual principal motivo fez você vir ao evento?`,
            outra_motivo = NA,
            oficina = NA,
            interacao = NA,
            outra_atracao1 =`P14 a) PALCOS que foi ou pretende ir:` ,
            outra_atracao2 = `P14 b) ESPAÇOS que foi ou pretende ir:`,
            outra_atracao3 = `17. Você foi / pretende ir ao Viradão Gastronômico?`,
            divulgacao = `13. Como você ficou sabendo do evento?`,
            nome_rede = `13.1. Qual rede e perfil?`,
            nome_rede_qual = NA,
            acompanhante = `18. Com quem você veio à Virada?`,
            outra_acompanhante = NA,
            gasto_alimento = `Gasto individual com alimentação`,
            gasto_transp = `Gasto individual com transporte interno`,
            gasto_compras = `Gasto individual com produtos comercializados`,
            gasto_cultura = NA,
            qtd_gastos = NA,
            dia_evento = NA,
            avaliacao_local = `P19j) Avaliação: Localização dos pontos de intervenção e palcos`,
            avaliacao_infra = `P19n) Avaliação: Infraestrutura do evento`,
            avaliacao_org = `P19p) Avaliação: Organização`,
            avaliacao_divulg = `P19b) Avaliação: Divulgação`,
            avaliacao_comida = `P19g) Avaliação: Qualidade da alimentação (comida e bebida)`,
            avaliacao_preco = `P19i) Avaliação: Preços praticados na alimentação (comida e bebida)`,
            avaliacao_produtos = NA,
            avaliacao_prog = `P19s) Avaliação: Programação como um todo`,
            avaliacao_representacao = NA,
            avaliacao_diversidade = NA,
            avaliacao_aproximacao = NA,
            avaliacao_acolhimento = NA,
            avaliacao_seguranca = `P19m) Avaliação: Sensação de segurança`,
            avaliacao_acessibilidade = `P19l) Avaliação: Acessibilidade para pessoas com deficiência`,
            avaliacao_limpeza = `P19q) Avaliação: Limpeza das vias públicas`,
            avaliacao_geral = `P19a) Avaliação: Avaliação geral da Virada Cultural BH`,
            melhor_ativ = NA,
            volta = NA,
            sexo = `35. Com qual gênero você se identifica?`,
            lgbt = `37. Você é uma pessoa LGBTQIA+?`,
            raca = `32. Segundo as categorias do IBGE, como você declara sua cor ou raça?`,
            escolaridade = `34. Qual seu grau de escolaridade?`,
            renda =`38. Somando a sua renda com a renda das pessoas que moram na sua casa, em qual dessas faixas você se encontra?` )


natal_bem <- natal_bem %>% 
  transmute(id = `Carimbo de data/hora`,
            evento = "Natal do Bem",
            nome_pesquisador = Pesquisador,
            data_pesquisa = Data,
            resid_turista = `22. O entrevistado é turista, excursionista ou residente?`,
            idade = `1. Idade`,
            estado = `2. Qual sua origem? (UF)`,
            municipio = `3. Qual sua origem? (Cidade)`,
            pais = `2.1 País de origem`,
            pernoite = `3.1 Você pretende pernoitar em Goiânia?`,
            cidade = `4. Qual outra cidade?`,
            qtd_noite = `5. Quantos dias?`,
            hospedagem = `6. Onde você pretende se hospedar?`,
            transporte = `7. Qual o meio de transporte utilizado para chegar ao destino?`,
            acesso = `Acesso (Rodovias)`,
            rodovia = `Sinalização (Rodovias)`,
            hosp_rank = NA,
            gastronomia = `Gastronomia / Restaurantes`,
            limpeza = `Limpeza Urbana`,
            atividades = `9. Quais outras atividades você realizou ou pretende realizar nesta cidade?`,
            outra_atividade = NA,
            motivo = NA,
            outra_motivo = NA,
            oficina = `10. Você participou de alguma oficina cultural durante o festival?`,
            interacao = `11. O festival proporcionou uma oportunidade para você interagir com artistas e artesões locais?`,
            outra_atracao = `12. Você participou ou visitou alguma outra atividade do evento além da atração principal?`,
            divulgacao = `13. Como você ficou sabendo do evento?`,
            nome_rede = `14. Se redes sociais e internet, qual rede e perfil?`,
            nome_rede_qual = NA,
            acompanhante = `15. Com quem você veio ao evento?`,
            outra_acompanhante = NA,
            gasto_alimento = `Alimentação (Comida e bebida) - R$`,
            gasto_transp = `Transporte interno - R$`,
            gasto_compras = `Compras (Feira) - R$`,
            gasto_cultura = `Produtos e serviços culturais - R$`,
            qtd_gastos = `17. Contando com você, quantas pessoas estão incluídas nesses gastos?`,
            dia_evento = `18. Quantos dias participou ou irá participar do evento?`,
            avaliacao_local = `Local do Evento`,
            avaliacao_infra = `Infraestrutura do Evento`,
            avaliacao_org = `Organização do Evento`,
            avaliacao_divulg = Divulgação,
            avaliacao_comida = `Alimentos e bebidas (qualidade)`,
            avaliacao_preco = `Preços praticados no evento`,
            avaliacao_produtos = `Artesanato e/ou Produtos culturais comercializados`,
            avaliacao_prog = `Programação cultural`,
            avaliacao_representacao = `Representatividade da cultura local`,
            avaliacao_diversidade = `Diversidade das atividades culturais`,
            avaliacao_aproximacao = `Aproximação com a cultura local`,
            avaliacao_acolhimento = `Acolhimento aos visitantes`,
            avaliacao_seguranca = `Sensação de segurança`,
            avaliacao_acessibilidade = `Acessibilidade / PCD no evento`,
            avaliacao_limpeza = `Limpeza geral (ambiente evento)`,
            avaliacao_geral = `Avaliação Geral do Evento`,
            melhor_ativ = `20. Qual atividade cultural você mais gostou no evento?`,
            volta = `21. Você voltaria ao festival no próximo ano?`,
            sexo = `23. Qual sexo do respondente?`,
            lgbt = `24. Você é uma pessoa LGBTQIAPN+?`,
            raca = `25. Qual a sua identidade étnico racial?`,
            escolaridade = `26. Qual sua escolaridade?`,
            renda =`27. Renda familiar` )


natal <- natal %>% 
  transmute(id = `Carimbo de data/hora`,
            evento = "Natal",
            nome_pesquisador = NA,
            data_pesquisa = NA,
            resid_turista = `24. O entrevistado é turista, excursionista ou residente?`,
            idade = `1. Qual sua idade? (maior de 16 anos)`,
            estado = `2. Onde você reside?`,
            municipio = `3. Se "Rio Grande do Norte", qual município?`,
            pais = NA,
            pernoite = `4. Pretende pernoitar (dormir) nesta cidade?`,
            cidade = `5. Qual cidade?`,
            qtd_noite = `6. Se sim, por quantos dias você pretende dormir nessa cidade?`,
            hospedagem = `7. Onde você pretende se hospedar?`,
            transporte = `8. Qual o meio de transporte utilizado para chegar ao seu destino?`,
            acesso = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Acesso (rodovias)]`,
            rodovia = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Sinalização (rodovias)]`,
            hosp_rank = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Hospedagens]`,
            gastronomia = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Gastronomia/Restaurantes]`,
            limpeza = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Limpeza urbana  ]`,
            atividades = `10. Quais outras atividades você realizou ou pretende realizar nesta cidade?`,
            outra_atividade = NA,
            motivo = `11. Qual o principal motivo que fez você vir ao evento?`,
            outra_motivo = NA,
            oficina = `12. Você participou de alguma oficina cultural durante o festival?`,
            interacao = `13. O festival proporcionou uma oportunidade para você interagir com artistas e artesões locais?`,
            outra_atracao = NA,
            divulgacao = `15. Como você ficou sabendo do evento?`,
            nome_rede = `16. Se redes sociais, qual rede e qual perfil?`,
            nome_rede_qual = NA,
            acompanhante = `17. Com quem você veio ao evento?`,
            outra_acompanhante = NA,
            gasto_alimento = `18. Qual será seu gasto estimado no evento?  [Alimentação (comida e bebida)]`,
            gasto_transp = `18. Qual será seu gasto estimado no evento?  [Transporte interno ]`,
            gasto_compras = `18. Qual será seu gasto estimado no evento?  [Compras (feira)]`,
            gasto_cultura = `18. Qual será seu gasto estimado no evento?  [Produtos e serviços culturais]`,
            qtd_gastos = `19. Contando com você, quantas pessoas estão incluídas nesses gastos?`,
            dia_evento = `20. Quantos dias você participará/participou do evento?`,
            avaliacao_local = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Local do evento]`,
            avaliacao_infra = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Infraestrutura do evento]`,
            avaliacao_org = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Organização do evento]`,
            avaliacao_divulg = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Divulgação ]`,
            avaliacao_comida = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Alimentos e bebidas (qualidade)]`,
            avaliacao_preco = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Preços praticados no evento]`,
            avaliacao_produtos = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Preços praticados no evento]`,
            avaliacao_prog = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Programação cultural]`,
            avaliacao_representacao = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Representatividade da cultura local]`,
            avaliacao_diversidade = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Diversidades das atividades culturais]`,
            avaliacao_aproximacao = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Aproximação com a cultura local]`,
            avaliacao_acolhimento = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Acolhimento aos visitantes ]`,
            avaliacao_seguranca = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Sensação de segurança]`,
            avaliacao_acessibilidade = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Acessibilidade/PCD no evento]`,
            avaliacao_limpeza = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Limpeza geral (ambiente do evento)]`,
            avaliacao_geral = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Avaliação Geral do Evento]`,
            melhor_ativ = `22. Qual atividade cultural você mais gostou no evento?`,
            volta = `23. Você voltaria ao evento novamente?`,
            sexo = `25. Qual o gênero do respondente?`,
            lgbt = `26. Você faz parte da comunidade LGBTQIAPN+?`,
            raca = `27. Qual a sua identidade étnico racial?`,
            escolaridade = `28. Qual a sua escolaridade?`,
            renda = `29. Sabendo que o salário mínimo é de R$1.420,00, sua renda familiar atual é de quantos salários mínimos?`)


largo <- largo %>% 
  transmute(id = `Carimbo de data/hora`,
            evento = "Natal no Largo",
            nome_pesquisador = NA,
            data_pesquisa = NA,
            resid_turista = `O entrevistado é turista, excursionista ou residente?`,
            idade = `Qual a idade?`,
            estado = `Qual sua residência permanente/onde você mora?`,
            municipio = `Se "Amazonas", qual município?`,
            pais = NA,
            pernoite = `Você pretende pernoitar (dormir) nesta cidade?`,
            cidade = `Qual outra cidade?`,
            qtd_noite = `Se sim, por quantos dias você pretende dormir nesta cidade?`,
            hospedagem = `Onde você pretende se hospedar?`,
            transporte = `Qual meio de transporte utilizado para chegar ao destino?`,
            acesso = `Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ÓTIMO e 1 (um) PÉSSIMO [Acesso (rodovias)]`,
            rodovia = `Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ÓTIMO e 1 (um) PÉSSIMO [Sinalização (rodovias)]`,
            hosp_rank = `Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ÓTIMO e 1 (um) PÉSSIMO [Hospedagem]`,
            gastronomia = `Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ÓTIMO e 1 (um) PÉSSIMO [Gastronomia/Restaurante]`,
            limpeza = `Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ÓTIMO e 1 (um) PÉSSIMO [Limpeza urbana]`,
            atividades = `Quais outras atividades você realizou ou pretende realizar nesta cidade?`,
            outra_atividade = NA,
            motivo = `Qual o principal motivo que fez você vir ao evento?`,
            outra_motivo = NA,
            oficina = `Você participou de alguma oficina cultural durante o festival?`,
            interacao = `O festival proporcionou uma oportunidade para você interagir com artistas e artesãos locais?`,
            outra_atracao = `Você participou ou visitou alguma outra atividade do evento além da atração principal?
`,
            divulgacao = `Como você ficou sabendo do evento?`,
            nome_rede = `Se redes sociais e internet, qual rede e perfil?`,
            nome_rede_qual = NA,
            acompanhante = `Com quem você veio ao evento?`,
            outra_acompanhante = NA,
            gasto_alimento = NA,
            gasto_transp = NA,
            gasto_compras = NA,
            gasto_cultura = NA,
            qtd_gastos = `Contando você, quantas pessoas estão incluídas nesses gastos?`,
            dia_evento = `Quantos dias participou ou irá participar do evento?`,
            avaliacao_local = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Local]`,
            avaliacao_infra = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Infraestrutura]`,
            avaliacao_org = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Organização]`,
            avaliacao_divulg = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Divulgação]`,
            avaliacao_comida = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Alimentos e bebidas (qualidade)]`,
            avaliacao_preco = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Preços ]`,
            avaliacao_produtos = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Artesanato e/ou produtos culturais comercializados]`,
            avaliacao_prog = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Programação cultural]`,
            avaliacao_representacao = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Representatividade da cultura local]`,
            avaliacao_diversidade = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Diversidade das atividades culturais ]`,
            avaliacao_aproximacao = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Aproximação com a cultura local]`,
            avaliacao_acolhimento = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Acolhimento aos visitantes]`,
            avaliacao_seguranca = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Segurança]`,
            avaliacao_acessibilidade = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Acessibilidade/PCD ]`,
            avaliacao_limpeza = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Limpeza geral ]`,
            avaliacao_geral = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Avaliação geral]`,
            melhor_ativ = `Qual atividade cultural você mais gostou no evento?`,
            volta = `Você voltaria ao festival no próximo ano?`,
            sexo = `Qual o sexo do respondente?`,
            lgbt = `Você é uma pessoa LGBTQIAPN+?`,
            raca = `Qual a sua identidade étnico racial?`,
            escolaridade = `Qual sua escolaridade?`,
            renda = `Sabendo que o salário mínimo é de R$1.420,00, sua renda familiar atual é de até quantos salários mínimos?`)

colnames(japao) <- japao[2,]
japao <- japao[c(-1,-2),]  
japao <- japao %>% rename(acesso = 11, rodovia = 12, hosp_rank = 13, gastronomia = 14, limpeza = 15, interacao = 19,outra_atracao = 20) %>%   
  transmute(id = NA,
            evento = "Festival do Japão do Mato Grosso",
            nome_pesquisador = Aplicadores,
            data_pesquisa = `Data/hora`,
            resid_turista = `24.O entrevistado é turista, excursionista ou residente?`,
            idade = `1. Qual sua idade? (maior de 16 anos)`,
            estado = `2. Qual a sua residência permanente/onde você mora (Estado)?`,
            municipio = `3. Se “Mato Grosso do Sul”, qual município?`,
            pais = NA,
            pernoite = `4. Você pretende pernoitar (dormir) nesta cidade?`,
            cidade = `5. Qual outra cidade?`,
            qtd_noite = `6. Se sim, por quantos dias você pretende dormir nesta cidade? (ex: 1,2,3...)`,
            hospedagem = `7. Onde você pretende se hospedar?`,
            transporte = `8. Qual o meio de transporte utilizado para chegar ao destino?`,
            acesso ,
            rodovia ,
            hosp_rank ,
            gastronomia ,
            limpeza ,
            atividades = `10.Quais outras atividades você realizou ou pretende realizar nesta cidade?`,
            outra_atividade = NA,
            motivo = `11.Qual o principal motivo que fez você vir ao evento?`,
            outra_motivo = NA,
            oficina = `12.Você participou de alguma oficina cultural durante este festival?`,
            interacao ,
            outra_atracao ,
            divulgacao = `15. Como você ficou sabendo do evento?`,
            nome_rede = `16.Se redes sociais e internet, qual rede e perfil? (Resposta Única e Espontânea)`,
            nome_rede_qual = NA,
            acompanhante = `17.Com quem você veio ao evento?`,
            outra_acompanhante = NA,
            gasto_alimento = `Alimentação (Comida e bebida) R$`,
            gasto_transp = NA,
            gasto_compras = `Compras ( feira) R$`,
            gasto_cultura = `Produtos e serviços culturais R$`,
            qtd_gastos = `19.Contando com você, quantas pessoas estão incluídas nesses gastos? (numérico)`,
            dia_evento = `20.Quantos dias participou ou irá participar do evento?`,
            avaliacao_local = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [a. Local do evento]`,
            avaliacao_infra = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [b. Infraestrutura do evento]`,
            avaliacao_org = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [c. Organização do evento]`,
            avaliacao_divulg = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [d. Divulgação]`,
            avaliacao_comida = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [e. Alimentos e bebidas(qualidade)]`,
            avaliacao_preco = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [f. Preços praticados no evento]`,
            avaliacao_produtos = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [g. Artesanato e/ou Produtos culturais comercializados]`,
            avaliacao_prog = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [h. Programação cultural]`,
            avaliacao_representacao = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [i. Representatividade da cultura local]`,
            avaliacao_diversidade = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [j. Diversidade das atividades culturais]`,
            avaliacao_aproximacao = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [k. Aproximação com a cultura local]`,
            avaliacao_acolhimento = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [l. Acolhimento aos visitantes]`,
            avaliacao_seguranca = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [m. Sensação de segurança]`,
            avaliacao_acessibilidade = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [n. Acessibilidade /PCD no evento]`,
            avaliacao_limpeza = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [o. Limpeza geral(ambiente evento)]`,
            avaliacao_geral = `21.Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (0 “Não se aplica” ou “não sei”) [p. Avaliação Geral do Evento]`,
            melhor_ativ = `22.Qual atividade cultural você mais gostou no evento?`,
            volta = `23.Você voltaria ao "Festival do Japão” no próximo ano?`,
            sexo = `25.Qual sexo do respondente?`,
            lgbt = `26.Você é uma pessoa LGBTQIAPN+?`,
            raca = `27.Qual a sua identidade étnico racial?`,
            escolaridade = `28.Qual sua escolaridade?`,
            renda = `29.Sabendo que o salário mínimo é de R$ 1.420,00, sua renda familiar atual é de quantos salários mínimos?`)


congadas <- congadas %>% 
  transmute(id = `Carimbo de data/hora`,
            evento = "Congadas",
            nome_pesquisador = Pesquisador,
            data_pesquisa = Data,
            resid_turista = `24. O entrevistado é turista, excursionista ou residente?`,
            idade = `1. Idade`,
            estado = `2. Qual sua origem? (UF)`,
            municipio = `3. Qual sua origem? (Cidade)`,
            pais = `2.1 País de origem`,
            pernoite = `3.1 Você pretende pernoitar em Ouvidor?`,
            cidade = `3.2 Vou pernoitar em outra cidade?`,
            qtd_noite = `5. Quantos dias?`,
            hospedagem = `6. Onde você pretende se hospedar?`,
            transporte = `7. Qual o meio de transporte utilizado para chegar ao destino?`,
            acesso = `Acesso (Rodovias)`,
            rodovia = `Sinalização (Rodovias)`,
            hosp_rank = NA,
            gastronomia = `Gastronomia / Restaurantes`,
            limpeza = `Limpeza Urbana`,
            atividades = `10. Quais outras atividades você realizou ou pretende realizar nesta cidade?`,
            outra_atividade = NA,
            motivo = NA,
            outra_motivo = NA,
            oficina = `12. Você participou de alguma oficina cultural durante o festival?`,
            interacao = `13. O festival proporcionou uma oportunidade para você interagir com artistas e artesões locais?`,
            outra_atracao = `14. Você participou ou visitou alguma outra atividade do evento além da atração principal?`,
            divulgacao = `15. Como você ficou sabendo do evento?`,
            nome_rede = `16. Se redes sociais e internet, qual rede e perfil?`,
            nome_rede_qual = NA,
            acompanhante = `17. Com quem você veio ao evento?`,
            outra_acompanhante = NA,
            gasto_alimento = `Alimentação (Comida e bebida) - R$`,
            gasto_transp = `Transporte interno - R$`,
            gasto_compras = `Compras (Feira) - R$`,
            gasto_cultura = `Produtos e serviços culturais - R$`,
            qtd_gastos = `19. Contando com você, quantas pessoas estão incluídas nesses gastos?`,
            dia_evento = `20. Quantos dias participou ou irá participar do evento?`,
            avaliacao_local = `Local do Evento`,
            avaliacao_infra = `Infraestrutura do Evento`,
            avaliacao_org = `Organização do Evento`,
            avaliacao_divulg = Divulgação,
            avaliacao_comida = `Alimentos e bebidas (qualidade)`,
            avaliacao_preco = `Preços praticados no evento`,
            avaliacao_produtos = `Artesanato e/ou Produtos culturais comercializados`,
            avaliacao_prog = `Programação cultural`,
            avaliacao_representacao = `Representatividade da cultura local`,
            avaliacao_diversidade = `Diversidade das atividades culturais`,
            avaliacao_aproximacao = `Aproximação com a cultura local`,
            avaliacao_acolhimento = `Acolhimento aos visitantes`,
            avaliacao_seguranca = `Sensação de segurança`,
            avaliacao_acessibilidade = `Acessibilidade / PCD no evento`,
            avaliacao_limpeza = `Limpeza geral (ambiente evento)`,
            avaliacao_geral = `Avaliação Geral do Evento`,
            melhor_ativ = `22. Qual atividade cultural você mais gostou no evento?`,
            volta = `23. Você voltaria ao festival no próximo ano?`,
            sexo = `25. Qual sexo do respondente?`,
            lgbt = `26. Você é uma pessoa LGBTQIAPN+?`,
            raca = `27. Qual a sua identidade étnico racial?`,
            escolaridade = `28. Qual sua escolaridade?`,
            renda = `29. Renda familiar`)



boi <- boi %>%
  transmute(id = `Carimbo de data/hora`,
            evento = "Boi Manaus",
            nome_pesquisador = NA,
            data_pesquisa = NA,
            resid_turista = `O entrevistado é turista, excursionista ou residente?`,
            idade = `Qual a idade?`,
            estado = `Qual sua residência permanente/onde você mora?`,
            municipio = `Se "Amazonas", qual município?`,
            pais = NA,
            pernoite = `Você pretende pernoitar (dormir) nesta cidade?`,
            cidade = `Qual outra cidade?`,
            qtd_noite = `Se sim, por quantos dias você pretende dormir nesta cidade?`,
            hospedagem = `Onde você pretende se hospedar?`,
            transporte = `Qual meio de transporte utilizado para chegar ao destino?`,
            acesso = `Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ÓTIMO e 1 (um) PÉSSIMO [Acesso (rodovias)]`,
            rodovia = `Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ÓTIMO e 1 (um) PÉSSIMO [Sinalização (rodovias)]`,
            hosp_rank = `Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ÓTIMO e 1 (um) PÉSSIMO [Hospedagem]`,
            gastronomia = `Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ÓTIMO e 1 (um) PÉSSIMO [Gastronomia/Restaurante]`,
            limpeza = `Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ÓTIMO e 1 (um) PÉSSIMO [Limpeza urbana]`,
            atividades = `Quais outras atividades você realizou ou pretende realizar nesta cidade?`,
            outra_atividade = NA,
            motivo = `Qual o principal motivo que fez você vir ao evento?`,
            outra_motivo = NA,
            oficina = `Você participou de alguma oficina cultural durante o festival?`,
            interacao = `O festival proporcionou uma oportunidade para você interagir com artistas e artesãos locais?`,
            outra_atracao = `Você participou ou visitou alguma outra atividade do evento além da atração principal?
`,
            divulgacao = `Como você ficou sabendo do evento?`,
            nome_rede = `Se redes sociais e internet, qual rede e perfil?`,
            nome_rede_qual = NA,
            acompanhante = `Com quem você veio ao evento?`,
            outra_acompanhante = NA,
            gasto_alimento = NA,
            gasto_transp = NA,
            gasto_compras = NA,
            gasto_cultura = NA,
            qtd_gastos = `Contando você, quantas pessoas estão incluídas nesses gastos?`,
            dia_evento = `Quantos dias participou ou irá participar do evento?`,
            avaliacao_local = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Local]`,
            avaliacao_infra = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Infraestrutura]`,
            avaliacao_org = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Organização]`,
            avaliacao_divulg = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Divulgação]`,
            avaliacao_comida = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Alimentos e bebidas (qualidade)]`,
            avaliacao_preco = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Preços ]`,
            avaliacao_produtos = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Artesanato e/ou produtos culturais comercializados]`,
            avaliacao_prog = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Programação cultural]`,
            avaliacao_representacao = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Representatividade da cultura local]`,
            avaliacao_diversidade = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Diversidade das atividades culturais ]`,
            avaliacao_aproximacao = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Aproximação com a cultura local]`,
            avaliacao_acolhimento = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Acolhimento aos visitantes]`,
            avaliacao_seguranca = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Segurança]`,
            avaliacao_acessibilidade = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Acessibilidade/PCD ]`,
            avaliacao_limpeza = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Limpeza geral ]`,
            avaliacao_geral = `Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ÓTIMO e 1 (um) péssimo [Avaliação geral]`,
            melhor_ativ = `Qual atividade cultural você mais gostou no evento?`,
            volta = `Você voltaria ao festival no próximo ano?`,
            sexo = `Qual o sexo do respondente?`,
            lgbt = `Você é uma pessoa LGBTQIAPN+?`,
            raca = `Qual a sua identidade étnico racial?`,
            escolaridade = `Qual sua escolaridade?`,
            renda = `Sabendo que o salário mínimo é de R$1.420,00, sua renda familiar atual é de até quantos salários mínimos?`)

blumenau <- blumenau %>%
  transmute(id = `ID de resposta`,
            evento = "BLUMENAU OKTOBERFEST",
            nome_pesquisador = NA,
            data_pesquisa = NA,
            resid_turista = `O entrevistado é turista, excursionista ou residente ?`,
            idade = `Qual sua idade ? (Deve ser maior de 16 anos) `,
            estado = `Qual ESTADO é sua residência permanente/onde você mora?`,
            municipio = `Se Santa Catarina, qual município?`,
            pais = `Se “Outro país”, qual ? `,
            pernoite = `Você pretende pernoitar (dormir) nesta cidade ? `,
            cidade = `Qual outra cidade? `,
            qtd_noite = `Se sim, por quantos dias você pretende dormir nesta cidade?`,
            hospedagem = `Onde você pretende se hospedar ? `,
            transporte = `Qual o meio de transporte utilizado para chegar ao destino ?`,
            acesso = `Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) Ótimo a 1 (um) Péssimo.  0 (zero) Não se aplica/ Não sei  Acesso (Rodovias)`,
            rodovia = `Sinalização (Rodovias) `,
            hosp_rank = `Hospedagem `,
            gastronomia = `Gastronomia/Restaurantes`,
            limpeza = `Limpeza Urbana  `,
            atividades = `Quais outras atividades você realizou ou pretende realizar nesta cidade ? `,
            outra_atividade = NA,
            motivo = `Qual o principal motivo que fez você vir ao evento ? `,
            outra_motivo = NA,
            oficina = `Você participou de alguma oficina cultural durante o festival?`,
            interacao = `O festival proporcionou uma oportunidade para você interagir com artistas e artesãos locais?`,
            outra_atracao = `Você participou ou visitou alguma outra atividade do evento além da atração principal ?`,
            divulgacao = `Como você ficou sabendo do evento ? `,
            nome_rede = `Se redes sociais e internet, qual rede e perfil? (Resposta Única e Espontânea) `,
            nome_rede_qual = `Anotar o perfil falado`,
            acompanhante = `Com quem você veio ao evento ?`,
            outra_acompanhante = NA,
            gasto_alimento = NA,
            gasto_transp = `Transporte interno R$`,
            gasto_compras = `Compras ( feira) R$`,
            gasto_cultura = `Produtos e serviços culturais R$ `,
            qtd_gastos = `Contando com você, quantas pessoas estão incluídas nesses gastos ?`,
            dia_evento = `Quantos dias participou ou irá participar do evento ? (caso o evento seja apenas de um dia, esta pergunta já tem resposta automática de 1)`,
            avaliacao_local = `Avalie os seguintes aspectos relacionados ao evento deste ano,  pontuando de 10 (dez) ótimo a 1 (um) péssimo.  0 (Zero) Não se aplica/Não seiLocal do evento `,
            avaliacao_infra = `Infraestrutura do evento`,
            avaliacao_org = `Organização do evento `,
            avaliacao_divulg = Divulgação,
            avaliacao_comida = `Alimentos e bebidas (qualidade)`,
            avaliacao_preco = `Preços praticados no evento`,
            avaliacao_produtos = `Artesanato e/ou Produtos comercializados `,
            avaliacao_prog = `Programação cultural `,
            avaliacao_representacao = `Representatividade da cultura local`,
            avaliacao_diversidade = `Diversidade das atividades culturais`,
            avaliacao_aproximacao = `Aproximação com a cultura local`,
            avaliacao_acolhimento = `Acolhimento aos visitantes`,
            avaliacao_seguranca = `Sensação de segurança `,
            avaliacao_acessibilidade = `Acessibilidade /PCD no evento `,
            avaliacao_limpeza = `Limpeza geral (ambiente evento)`,
            avaliacao_geral = `Avaliação Geral do Evento `,
            melhor_ativ = `Qual atividade cultural você mais gostou no evento ? `,
            volta = `Você voltaria ao festival “Oktoberfest Blumenau” no próximo ano?`,
            sexo = `Qual sexo do respondente ?`,
            lgbt = `Você é uma pessoa LGBTQIAPN+ ?`,
            raca = `Qual a sua identidade étnico racial ?`,
            escolaridade = `Qual sua escolaridade?`,
            renda = `Sabendo que o Salário Mínimo (SM) é de R$ 1.420,00, sua renda familiar atual é de quantos salários mínimos ? `)

virada <- virada %>% mutate(municipio3 = NULL,
                            municipio = case_when(is.na(estado)== F ~ municipio1,
                                                  TRUE ~ municipio2), municipio1 = NULL,
                            municipio2 = NULL)
virada <- virada %>% mutate(outra_atracao1 = NULL,
                            outra_atracao = case_when(is.na(outra_atracao2)== FALSE~"Sim",
                                                      outra_atracao3 == "Sim, fui ou pretendo ir"~"Sim",
                                                      outra_atracao3 == "Ainda não decidiu"~"NR/NS",
                                                      TRUE ~"Não"))

virada <- virada %>% mutate(outra_atracao2 = NULL, outra_atracao3 = NULL)

carnaval <- carnaval %>%
  transmute(id = `Carimbo de data/hora`,
            evento = "Carnaval RN",
            nome_pesquisador = NA,
            data_pesquisa = NA,
            resid_turista = `24. O entrevistado é turista, excursionista ou residente?`,
            idade = `1. Qual sua idade? (maior de 16 anos)`,
            estado = `2. Onde você reside?`,
            municipio = `3. Se "Rio Grande do Norte", qual município?`,
            pais = NA,
            pernoite = `4. Pretende pernoitar (dormir) nesta cidade?`,
            cidade = `5. Qual cidade?`,
            qtd_noite = `6. Se sim, por quantos dias você pretende dormir nessa cidade?`,
            hospedagem = `7. Onde você pretende se hospedar?`,
            transporte = `8. Qual o meio de transporte utilizado para chegar ao seu destino?`,
            acesso = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Acesso (rodovias)]`,
            rodovia = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Sinalização (rodovias)]`,
            hosp_rank = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Hospedagens]`,
            gastronomia = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Gastronomia/Restaurantes]`,
            limpeza = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Limpeza urbana  ]`,
            atividades = `10. Quais outras atividades você realizou ou pretende realizar nesta cidade?`,
            outra_atividade = NA,
            motivo = `11. Qual o principal motivo que fez você vir ao evento?`,
            outra_motivo = NA,
            oficina = `12. Você participou de alguma oficina cultural durante o festival?`,
            interacao = `13. O festival proporcionou uma oportunidade para você interagir com artistas e artesões locais?`,
            outra_atracao = `14. Você participou ou visitou alguma outra atividade do evento além da atração principal?`,
            divulgacao = `15. Como você ficou sabendo do evento?`,
            nome_rede = `16. Se redes sociais, qual rede e qual perfil?`,
            nome_rede_qual = NA,
            acompanhante = `17. Com quem você veio ao evento?`,
            outra_acompanhante = NA,
            gasto_alimento = `18. Qual será seu gasto estimado no evento?  [Alimentação (comida e bebida)]`,
            gasto_transp = `18. Qual será seu gasto estimado no evento?  [Transporte interno ]`,
            gasto_compras = `18. Qual será seu gasto estimado no evento?  [Compras (feira)]`,
            gasto_cultura = `18. Qual será seu gasto estimado no evento?  [Produtos e serviços culturais]`,
            qtd_gastos = `19. Contando com você, quantas pessoas estão incluídas nesses gastos?`,
            dia_evento = `20. Quantos dias você participará/participou do evento?`,
            avaliacao_local = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Local do evento]`,
            avaliacao_infra = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Infraestrutura do evento]`,
            avaliacao_org = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Organização do evento]`,
            avaliacao_divulg = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Divulgação ]`,
            avaliacao_comida = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Alimentos e bebidas (qualidade)]`,
            avaliacao_preco = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Preços praticados no evento]`,
            avaliacao_produtos = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Artesanato e/ou produtos culturais comercializados ]`,
            avaliacao_prog = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Programação cultural]`,
            avaliacao_representacao = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Representatividade da cultura local]`,
            avaliacao_diversidade = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Diversidades das atividades culturais]`,
            avaliacao_aproximacao = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Aproximação com a cultura local]`,
            avaliacao_acolhimento = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Acolhimento aos visitantes ]`,
            avaliacao_seguranca = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Sensação de segurança]`,
            avaliacao_acessibilidade = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Acessibilidade/PCD no evento]`,
            avaliacao_limpeza = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Limpeza geral (ambiente do evento)]`,
            avaliacao_geral = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Avaliação Geral do Evento]`,
            melhor_ativ = `22. Qual atividade cultural você mais gostou no evento?`,
            volta = `23. Você voltaria ao evento novamente?`,
            sexo = `25. Qual o gênero do respondente?`,
            lgbt = `26. Você faz parte da comunidade LGBTQIAPN+?`,
            raca = `27. Qual a sua identidade étnico racial?`,
            escolaridade = `28. Qual a sua escolaridade?`,
            renda = `29. Sabendo que o salário mínimo é de R$1.420,00, sua renda familiar atual é de quantos salários mínimos?`)





martires <- martires %>%
  transmute(id = `Carimbo de data/hora`,
            evento = "Festa de Martires",
            nome_pesquisador = NA,
            data_pesquisa = NA,
            resid_turista = `24. O entrevistado é turista, excursionista ou residente?`,
            idade = `1. Qual sua idade? (maior de 16 anos)`,
            estado = `2. Onde você reside?`,
            municipio = `3. Se "Rio Grande do Norte", qual município?`,
            pais = NA,
            pernoite = `4. Pretende pernoitar (dormir) nesta cidade?`,
            cidade = `5. Qual cidade?`,
            qtd_noite = `6. Se sim, por quantos dias você pretende dormir nessa cidade?`,
            hospedagem = `7. Onde você pretende se hospedar?`,
            transporte = `8. Qual o meio de transporte utilizado para chegar ao seu destino?`,
            acesso = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Acesso (rodovias)]`,
            rodovia = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Sinalização (rodovias)]`,
            hosp_rank = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Hospedagens]`,
            gastronomia = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Gastronomia/Restaurantes]`,
            limpeza = `9. Avalie os seguintes aspectos relacionados à cidade, pontuando de 10 (dez) ótimo, a 1 (um) péssimo. (NS/NR sendo “Não se aplica” ou “não sei”)  [Limpeza urbana  ]`,
            atividades = `10. Quais outras atividades você realizou ou pretende realizar nesta cidade?`,
            outra_atividade = NA,
            motivo = `11. Qual o principal motivo que fez você vir ao evento?`,
            outra_motivo = NA,
            oficina = `12. Você participou de alguma oficina cultural durante o festival?`,
            interacao = `13. O festival proporcionou uma oportunidade para você interagir com artistas e artesões locais?`,
            outra_atracao = `14. Você participou ou visitou alguma outra atividade do evento além da atração principal?`,
            divulgacao = `15. Como você ficou sabendo do evento?`,
            nome_rede = `16. Se redes sociais, qual rede e qual perfil?`,
            nome_rede_qual = NA,
            acompanhante = `17. Com quem você veio ao evento?`,
            outra_acompanhante = NA,
            gasto_alimento = `18. Qual será seu gasto estimado no evento?  [Alimentação (comida e bebida)]`,
            gasto_transp = `18. Qual será seu gasto estimado no evento?  [Transporte interno ]`,
            gasto_compras = `18. Qual será seu gasto estimado no evento?  [Compras (feira)]`,
            gasto_cultura = `18. Qual será seu gasto estimado no evento?  [Produtos e serviços culturais]`,
            qtd_gastos = `19. Contando com você, quantas pessoas estão incluídas nesses gastos?`,
            dia_evento = `20. Quantos dias você participará/participou do evento?`,
            avaliacao_local = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Local do evento]`,
            avaliacao_infra = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Infraestrutura do evento]`,
            avaliacao_org = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Organização do evento]`,
            avaliacao_divulg = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Divulgação ]`,
            avaliacao_comida = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Alimentos e bebidas (qualidade)]`,
            avaliacao_preco = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Preços praticados no evento]`,
            avaliacao_produtos = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Artesanato e/ou produtos culturais comercializados ]`,
            avaliacao_prog = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Programação cultural]`,
            avaliacao_representacao = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Representatividade da cultura local]`,
            avaliacao_diversidade = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Diversidades das atividades culturais]`,
            avaliacao_aproximacao = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Aproximação com a cultura local]`,
            avaliacao_acolhimento = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Acolhimento aos visitantes ]`,
            avaliacao_seguranca = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Sensação de segurança]`,
            avaliacao_acessibilidade = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Acessibilidade/PCD no evento]`,
            avaliacao_limpeza = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Limpeza geral (ambiente do evento)]`,
            avaliacao_geral = `21. Avalie os seguintes aspectos relacionados ao evento deste ano, pontuando de 10 (dez) ótimo a 1 (um) péssimo. (NS/NR - "não se aplica" ou "não sei") [Avaliação Geral do Evento]`,
            melhor_ativ = `22. Qual atividade cultural você mais gostou no evento?`,
            volta = `23. Você voltaria ao evento novamente?`,
            sexo = `25. Qual o gênero do respondente?`,
            lgbt = `26. Você faz parte da comunidade LGBTQIAPN+?`,
            raca = `27. Qual a sua identidade étnico racial?`,
            escolaridade = `28. Qual a sua escolaridade?`,
            renda = `29. Sabendo que o salário mínimo é de R$1.420,00, sua renda familiar atual é de quantos salários mínimos?`)



dic <- read_xlsx("dicionario_blumenau.xlsx")

# Get the sheet names
sheet_names <- excel_sheets("dicionario_blumenau.xlsx")

# Read all sheets into a named list
data_list <- setNames(lapply(sheet_names, function(sheet) {
  read_excel("dicionario_blumenau.xlsx", sheet = sheet)
}), sheet_names)

rm(blumenal)

blumenau <- blumenau %>% left_join(data_list$estado) %>% left_join(data_list$pernoite) %>% 
  left_join(data_list$nome_rede) %>% left_join(data_list$transporte) %>% left_join(data_list$atividade) %>% 
  left_join(data_list$divulgacao) %>% left_join(data_list$hospedagem) %>% left_join(data_list$motivo) %>% 
  left_join(data_list$oficina) %>% left_join(data_list$interacao) %>% left_join(data_list$outra_atracao) %>% 
  left_join(data_list$acompanhante) %>% left_join(data_list$renda) %>% left_join(data_list$volta) %>% 
  left_join(data_list$sexo) %>% left_join(data_list$resid_turista) %>% left_join(data_list$lgbt) %>% 
  left_join(data_list$raca) %>% left_join(data_list$escolaridade)

blumenau <- blumenau %>% select(-pernoite,-estado,-nome_rede,-transporte,-atividades,-divulgacao,-hospedagem,-motivo,-oficina,
                                -interacao,-outra_atracao,-acompanhante,-renda,-volta,-sexo,-resid_turista,-lgbt,-raca,
                                -escolaridade)

colnames(blumenau) <- gsub("_new","",colnames(blumenau))




rbot <- rbind(
  virada %>% mutate(uf_evento = "MG", mun_evento = "Belo Horizonte"),
  surubim %>% mutate(uf_evento = "PE", mun_evento = "Surubim", evento = "Semana Cultural"),
  quixaba %>% mutate(uf_evento = "PE", mun_evento = "Quixaba", evento = "95 Janeiro Fest"),
  passira %>% mutate(uf_evento = "PE", mun_evento = "Passira", evento = "36 FEBOMAP"),
  natal_bem %>% mutate(uf_evento = "GO", mun_evento = "Goiania"),
  natal %>% mutate(uf_evento = "RN", mun_evento = "Natal"),
  largo %>% mutate(uf_evento = "AM", mun_evento = "Manaus"),
  japao %>% mutate(uf_evento = "MT", mun_evento = "Campo Grande"),
  congadas %>% mutate(uf_evento = "GO", mun_evento = "Ouvidor"),
  boi %>% mutate(uf_evento = "AM", mun_evento = "Manaus"),
  blumenau %>% mutate(uf_evento = "SC", mun_evento = "Blumenau"),
  martires %>% mutate(uf_evento = "RN", mun_evento = "Natal"),
  carnaval %>% mutate(uf_evento = "RN", mun_evento = "Natal")
  
)

write.xlsx(rbot,"rbot.xlsx")


rbot <- rbot  %>% filter(evento!= "Semana Cultural")
rbot <- rbot %>% mutate(id =paste0("rbot-",rownames(rbot)),nome_pesquisador=NULL,data_pesquisa=NULL)
rbot <- rbot %>% mutate(resid_turista = case_when(resid_turista == "Belo Horizonte"~"Residente",
                                  resid_turista == "Cidade da região metropolitana de BH/RMBH"~"Excursionista",
                                  resid_turista == "Outro país" | resid_turista == "Outra cidade"~"Turista",
                                  is.na(resid_turista)== TRUE~"Não responderam",
                                  TRUE~resid_turista))


rbot <- rbot %>% mutate(idade2=as.numeric(gsub(" anos|anos|Anos| Anos| anos de idade","",idade)),
                        idade2 = case_when(idade2 < 17 ~ "eliminar",
                                           idade2>=17&idade2<=20~"17 a 20 anos",
                                           idade2>=21&idade2<=40~"21 a 40 anos",
                                           idade2>=41&idade2<=50~"41 a 50 anos",
                                           idade2>=51&idade<=60~"51 a 60 anos",
                                           idade2>60~"Acima de 60 anos", TRUE~NA),
                        idade=case_when(is.na(idade2)==TRUE~idade,
                                        TRUE~idade2),
                        idade=ifelse(idade%in%c("Não responderam","Filipe","Carnaíba","Água Branca pb",
                                                   "Princesa Isabel","eliminar"),NA,idade),
                        idade2=NULL, 
                        idade=case_when(idade== "60.0"|idade == "60 anos"~"51 a 60 anos",
                                        idade == "60+"~"Acima de 60 anos", TRUE~ idade))
  
d <- data.frame(estado = unique(rbot$estado),
                estado_new= c(NA, "Minas Gerais", "São Paulo", "Rio de Janeiro", "Ceará",
                              "Bahia", "Distrito Federal", "Paraná", "Paraíba", "Pernambuco",
                              "Maranhão", "Rio Grande do Norte", "Distrito Federal",
                              "Rondônia", "Piauí", "Alagoas", "Santa Catarina", "Goiás",
                              "Sergipe", "Outro país", "Goiás", "Pará", "Rondônia", "Distrito Federal",
                              NA, "Minas Gerais", "São Paulo", "Tocantins", "Mato Grosso", "Maranhão",
                              "Santa Catarina", "Rio de Janeiro", "Amazonas", "Outro país", "Amazonas", "Amazonas",
                              NA, "Amazonas", "Amazonas", "Amazonas", "Amazonas",
                              "Tocantins", "Pará", NA, "Pernambuco", "Roraima",
                              "Mato Grosso do Sul", "São Paulo", "Minas Gerais",
                              "Outro país", "Mato Grosso", "Rio de Janeiro", "Outro país",
                              "Acre", "Outro país", "Pernambuco", "Outro país",
                              "Outro país", "Rio Grande do Sul", "Mato Grosso", "Outro país",
                              "Mato Grosso do Sul", "Espírito Santo", "Distrito Federal"))
rbot <- rbot %>% mutate(pais = ifelse(estado%in%c("Árabe - Líbano","Portugal","Itália","Merida/México","Roma","Venezuela"),estado,pais)) %>% 
  left_join(d,by = "estado") %>% mutate(estado = estado_new,
                                                       estado_new = NULL)
rbot <- rbot %>% mutate(estado = case_when(estado == "Outro país"~NA, TRUE ~ estado))

rbot <- rbot %>% mutate(pais = case_when(pais == "Jaboatão dos outros" ~ NA,
                                         pais == "Jaboatão dos Guararapes"~NA,
                                         pais == "Jurú"~NA,
                                         pais == "Princesa Isabel"~ NA,
                                         pais == "Nr"~ NA,
                                         pais == "Ns"~ NA,
                                         pais == "Não"~NA,
                                         pais == "Nao sei"~NA,
                                         pais =="Merida/México"~ "México",
                                         pais == "Roma"~"Itália",
                                         pais == "Árabe - Líbano"~ "Libano",
                                         TRUE ~ pais))

rbot <- rbot %>% mutate(pernoite = case_when(pernoite == "Sim (pular para a questão 7)"~"Sim",
                                             pernoite == "Sim (pular para a 7)"~"Sim",
                                             pernoite%in%c("Não vai pernoitar","Não (pular para a questão 8)","Não vai pernoitar (pular para a 9)","Vou pernoitar em outra cidade.",
                                                           "Não vai pernoitar ","Não (pular para a questão 9)","Não vai pernoitar (pular para 8)")~"Não",
                                             TRUE~NA))

rbot <- rbot %>% mutate(cidade = case_when(cidade == "-"~NA,
                                           cidade == "Ns"~NA,
                                           cidade == "Não quis informar"~NA,
                                           cidade == "Não se aplica"~NA,
                                           cidade == "Não se aplica (Morador/turista cidadão)"~NA,
                                           cidade%in%c(".","casa","Não se aplica (Pernoite em Ouvidor)","3.0","SGA","Não tem","Sim","Não responderam","Não","Nr","Não quis responder",
                                                       "4.0","Nao sei")~NA,
                                           cidade=="Carnaiba PE"~"Carnaiba",
                                           cidade=="Limoeiro-Pe"~"Limoeiro",
                                           cidade=="Balnerio Camboriú"~"Balneário",
                                           cidade=="Em Carnaiba PE, na casa de meu tio"~"Carnaíba",
                                           cidade=="Sou de Natal rn, mas vou para Fernando Pedroza"~"Fernando Pedroza",
                                           cidade=="Natap"~"Natal",
                                           cidade=="Natal1"~"Natal",
                                           cidade=="Alminio afonso"~"Almino Afonso",
                                           cidade=="Natal rn"~"Natal",
                                           cidade=="Praia de Caraúbas, Maxaranguape"~"Maxaranguape",
                                           cidade=="Touros/RN"~"Touros",
                                           cidade=="Natal RN"~"Natal",
                                           cidade=="Frecheirinha ce"~"Freceirinha",
                                           cidade=="Praia de Jacumã - Ceará Mirim/RN"~"Ceará Mirim",
                                           cidade=="Tibau do sul/RN"~"Tibau do sul",
                                           cidade=="Extremoz (residente)"~"Extremoz",
                                           cidade=="Parnamirim- Pirangi"~"Parnamirim",
                                           cidade=="Campina Grande - PB"~"Campina Grande",
                                           cidade=="Natal RN"~"Natal",
                                           cidade=="Rio Grande Do norte natal"~"Natal",
                                           cidade=="parnamirim"~"Parnamirim",
                                           cidade=="Caicó e Macau"~"Caicó",
                                           cidade=="Pirangi- Parnamirim"~"Parnamirim",
                                           cidade=="Zumbi, Rio do Fogo"~"Rio do Fogo",
                                           cidade=="Caruaru, Recife"~"Caruaru",
                                           cidade=="Tavares Paraíba"~"Tavares",
                                           cidade=="Ceará Mirim"~"Ceará-Mirim",
                                           cidade=="Muriu"~"Muriú",
                                           cidade=="natal"~"Natal",
                                           cidade=="PARAZINHO"~"Parazinho",
                                           cidade=="Poço de pedra"~"Poço de Pedra",
                                           cidade=="São gonçalo"~"São Gonçalo",
                                           cidade=="São Gonçalo do ama"~"São Gonçalo do Amarante",
                                           cidade=="Cidade Natal"~"Natal",
                                           T~cidade))

q <- data.frame(qtd_noite = unique(rbot$qtd_noite),
                qtd_noite_new= c(NA,1,15,2,7,4,3,5,15,10,10,30,30,2,20,1,15,2,
                                 20,4,30,8,1,14,18,1,5,2,2,1,9,30,2,18,18,15,12,25,8,14,1,7,5,3,
                                 21,12,18,NA,90,18,NA,NA,NA,NA,NA,16,NA,NA,NA,21,3,NA,7,11,16,NA,8,NA,NA,4,13,NA,NA,NA,
                                 14,7,19,6,NA,22,3,NA,NA,3,1,7,NA,NA,NA,NA,NA,NA,NA,4,NA,NA,NA,2,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                                 NA,8,10,NA,NA,7,NA,NA,NA,NA,30,NA,NA,17,NA,NA,NA,10,NA,6,NA,NA,NA,NA,NA,NA,1,NA,NA,NA,2,NA,NA,3,
                                 4,NA,NA,4,NA,3,NA,NA,NA,6,NA,7,NA,NA,NA,NA,15,NA,NA,NA))
rbot <- rbot %>% left_join(q, by = "qtd_noite") %>% mutate(qtd_noite=qtd_noite_new,qtd_noite_new=NULL)                                 

rbot <- rbot %>% mutate(hospedagem=tolower(hospedagem))

rbot <- rbot %>% mutate(hospedagem = case_when(
  hospedagem%in%c("hotel ou flat", "hotel/flat","pousada","albergue/hostel", "hostel")~"Hotel",
  hospedagem%in%c("imóvel alugado (inclui airbnb)", "aluquel de casa", "casa alugada", "alugada", "imóvel (inclui airbnb)", "aluguel", "minha casa alugada","imóvel impróprio")~"Imóvel Alugado (inclui Airbnb)",
  hospedagem%in%c("casa de amigos e parentes", "casa de amigos ou parentes", "imóvel de amigo", "casa de amigos")~"Casa de Amigos",
  hospedagem=="camping"~"Camping",
  hospedagem=="imóvel próprio"~"Imóvel Próprio",
  TRUE~NA
  ))
rbot <- rbot %>% mutate(transporte = case_when(
  transporte%in%c("Ônibus rodoviário", "Ônibus rodoviário /Regular", "Ônibus rodoviário / Regular", "Ônibus rodoviário/Regular")~"Ônibus Rodoviário",
  transporte%in%c("APP carro (Uber, 99, In driver, Blablacar)", "APP carro (Uber, 99, In Drive, Blablacar", "APP carro (Uber, 99, In Drive, Blablacar)", "APP carro (uber, 99, In drive, Blablacar)", "Uber", "APP Carro e APP Moto")~"APP Carro",
  transporte%in%c("APP ônibus (Buser, Click Bus)", "APP ônibus (Buser/Click Bus)")~"APP Ônibus",
  transporte%in%c("Ônibus fretado", "Ônibus fretado/Excursão", "Ônibus fretado / Excursão", "Ônibus da Prefeitura Três Ranchos", "Ônibus escolar da Prefeitura Três Ranchos")~"Ônibus Fretado/Prefeitura",
  transporte=="Moto"~"Moto",
  transporte=="Barco"~"Barco",
  transporte=="Avião"~"Avião",
  transporte=="Carro"~"Carro",
  transporte%in%c("Apé", "A pé", "Andando", "a pé", "caminhando", "Bicicleta", "Caminhada", "Caminhando", "Pés", "A pe", "A Pé", "De pé", "Moro na frente de onde tem festa", "Não foi utilizado", "Nao vou")~"A Pé/Sem Transporte",
  TRUE~NA
))

rbot <- rbot %>% mutate(acesso=case_when(
  str_detect(acesso,",")== TRUE~NA,
  TRUE~acesso
),
acesso=gsub(" - ótimo","",acesso)
) %>% mutate(acesso=as.numeric(acesso),acesso=ifelse(acesso==11,NA,acesso))

rbot <- rbot %>% mutate(rodovia=case_when(
  str_detect(rodovia,",")== TRUE~NA,
  TRUE~rodovia
),
rodovia=gsub(" - ótimo","",rodovia)
) %>% mutate(rodovia=as.numeric(rodovia),rodovia=ifelse(rodovia==11,NA,rodovia))

rbot <- rbot %>% mutate(hosp_rank=case_when(
  str_detect(hosp_rank,",")== TRUE~NA,
  TRUE~hosp_rank
),
hosp_rank=gsub(" - ótimo","",hosp_rank)
) %>% mutate(hosp_rank=as.numeric(hosp_rank),hosp_rank=ifelse(hosp_rank==11,NA,hosp_rank))

rbot <- rbot %>% mutate(gastronomia=case_when(
  str_detect(gastronomia,",")== TRUE~NA,
  TRUE~gastronomia
),
gastronomia=gsub(" - ótimo","",gastronomia)
) %>% mutate(gastronomia=as.numeric(gastronomia),gastronomia=ifelse(gastronomia==11,NA,gastronomia))

rbot <- rbot %>% mutate(limpeza=case_when(
  str_detect(limpeza,",")== TRUE~NA,
  TRUE~limpeza
),
limpeza=gsub(" - ótimo","",limpeza)
) %>% mutate(limpeza=as.numeric(limpeza),limpeza=ifelse(limpeza==11,NA,limpeza))

rbot <- rbot %>% mutate(oficina=case_when(
  oficina == "Não Responderam"~NA,
  oficina == "Não."~"Não",
  oficina == "Sim."~"Sim",
  TRUE~oficina
))
rbot <- rbot %>% mutate(interacao=case_when(
  interacao == "Não Responderam"~NA,
  interacao == "Não."~"Não",
  interacao == "Sim."~"Sim",
  interacao == "Não responderam"~NA,
  TRUE~interacao
))


rbot <- rbot %>% mutate(acompanhante=case_when(
  acompanhante%in%c("Casal sem filhos/ namorado(a)", "Casal sem filhos / namorado(a)", "Casal sem filhos/namorado(a)")~"Casal",
  acompanhante%in%c("Grupo de amigos", "Amiga de trabalho", "Amiga", "Colega", "Amigos", "Vizinhos")~"Grupo de Amigos",
  acompanhante%in%c("Grupo Familiar", "Grupo familiar", "Família", "Mãe e filho", "Mãe e filha", "Pai e filha", "Mãe com filha", "irmã","Casal com filhos", "Vizinha", "Família, parceiro e amigos","Tio e namorado","Casal com filhos")~"Família",
  acompanhante%in%c("Colegas de trabalho", "Colega de trabalho", "Equipe de trabalho")~"Colegas de Trabalho",
  TRUE~NA
))



a <- rbot %>% select(id,nome_rede) %>% cSplit("nome_rede",sep = ",",direction = "long") %>% 
  mutate(nome_rede_tratado = case_when(
    str_detect(nome_rede,pattern = regex("whatsapp",ignore_case = TRUE))==TRUE~"WhatsApp",
    str_detect(nome_rede,pattern = regex("TikTok",ignore_case = TRUE))==TRUE~"TikTok",
    str_detect(nome_rede,pattern = regex("twitter",ignore_case = TRUE))==TRUE~"X",
    str_detect(nome_rede,pattern = regex("instagram",ignore_case = TRUE))==TRUE~"Instagram",
    str_detect(nome_rede,pattern = regex("facebook",ignore_case = TRUE))==TRUE~"Facebook",
    str_detect(nome_rede,pattern = regex("site",ignore_case = TRUE))==TRUE~"Sites",
    TRUE~"Outros",
  )) %>% mutate(nome_rede=NULL) %>%  unique() %>% group_by(id) %>% summarise(nome_rede_tratado=paste0(nome_rede_tratado,collapse = ";"))
rbot <- rbot %>% left_join(a, by = "id") %>% mutate(nome_rede=nome_rede_tratado,nome_rede_tratado = NULL)

alimento <- rbot %>% select(id, gasto_alimento) %>% mutate(gasto_num= as.numeric(gsub("[^0-9.]","",gasto_alimento)),
                                                           gasto_num = case_when(
                                                             gasto_num >= 10000~NA,
                                                             gasto_num == 0 | gasto_num == 5001~NA,
                                                             gasto_num >= 10 & gasto_num <=50~"Entre R$10,00 a R$50,00",
                                                             gasto_num >= 51 & gasto_num <=100~"Entre R$51,00 a R$100,00",
                                                             gasto_num >= 101 & gasto_num <=200~"Entre R$101,00 a R$200,00",
                                                             gasto_num >= 201 & gasto_num <=300~"Entre R$201,00 a R$300,00",
                                                             gasto_num >= 301 & gasto_num <=400~"Entre R$301,00 a R$400,00",
                                                             gasto_num >= 401 & gasto_num <=500~"Entre R$401,00 a R$500,00",
                                                             gasto_num > 500~"Acima de R$501,00",
                                                             is.na(gasto_num)~NA,
                                                             TRUE~NA),
                                                           gasto_num = case_when(
                                                             gasto_alimento == "80 reais a 100 reais"~"Entre R$51,00 a R$100,00",
                                                             gasto_alimento == "180 á 200 reais"~"Entre R$101,00 a R$200,00",
                                                             gasto_alimento%in%c("200 á 300 reais", "200 a 300 reais", "200 a 500 reais", "200 á 500 reais")~"Entre R$201,00 a R$300,00",
                                                             gasto_alimento%in%c("300 á 500 reais", "300 á 400 reais", "250 á 400 reais")~"Entre R$301,00 a R$400,00",
                                                             gasto_alimento%in%c("400 a 500 reais", "400 á 500 reais", "400/500 reais", "400 á500 reais")~"Entre R$401,00 a R$500,00",
                                                             gasto_alimento%in%c("500 á 600 reais", "600 á 800 reais", "500 á 800 reais", "500 á 1000 reais", "500 á 1.000 reais", "Mil reais")~"Acima de R$501,00",
                                                             str_detect(gasto_alimento, "Entre|Acima") == T ~ gasto_alimento,
                                                             TRUE~gasto_num
                                                           )) %>% 
  mutate(gasto_alimento = NULL)


rbot <- rbot %>% left_join(alimento, by = "id") %>% mutate(
  gasto_alimento = gasto_num,
  gasto_num = NULL
)



transporte <- rbot %>% select(id, gasto_transp) %>% mutate(gasto_num= as.numeric(gsub("[^0-9.]","",gasto_transp)),
                                                           gasto_num = case_when(
                                                             gasto_num >= 10000~NA,
                                                             gasto_num == 0 | gasto_num == 5001~NA,
                                                             gasto_num >= 10 & gasto_num <=50~"Entre R$10,00 a R$50,00",
                                                             gasto_num >= 51 & gasto_num <=100~"Entre R$51,00 a R$100,00",
                                                             gasto_num >= 101 & gasto_num <=200~"Entre R$101,00 a R$200,00",
                                                             gasto_num >= 201 & gasto_num <=300~"Entre R$201,00 a R$300,00",
                                                             gasto_num >= 301 & gasto_num <=400~"Entre R$301,00 a R$400,00",
                                                             gasto_num >= 401 & gasto_num <=500~"Entre R$401,00 a R$500,00",
                                                             gasto_num > 500~"Acima de R$501,00",
                                                             is.na(gasto_num)~NA,
                                                             TRUE~NA),
                                                           gasto_num = case_when(
                                                             #gasto_transp == "80 reais a 100 reais"~"Entre R$51,00 a R$100,00",
                                                             gasto_transp %in% c("100 á 200 reais", "150 á 200 reais", "150 á 180 reais")~"Entre R$101,00 a R$200,00",
                                                             gasto_transp%in%c("200 á 300 reais", "200/300 reais", "200 á250 reais")~"Entre R$201,00 a R$300,00",
                                                             gasto_transp%in%c("300 á 400 reais")~"Entre R$301,00 a R$400,00",
                                                             #gasto_transp%in%c("400 a 500 reais", "400 á 500 reais", "400/500 reais", "400 á500 reais")~"Entre R$401,00 a R$500,00",
                                                             gasto_transp%in%c("500 a 600", "800 a 900 reais")~"Acima de R$501,00",
                                                             str_detect(gasto_transp, "Entre|Acima") == T ~ gasto_transp,
                                                             TRUE~gasto_num
                                                           )) %>% 
  mutate(gasto_transp = NULL)




rbot <- rbot %>% left_join(transporte, by = "id") %>% mutate(
  gasto_transp = gasto_num,
  gasto_num = NULL
)





compras <- rbot %>% select(id, gasto_compras) %>% mutate(gasto_num= as.numeric(gsub("[^0-9.]","",gasto_compras)),
                                                         gasto_num = case_when(
                                                           gasto_num >= 10000~NA,
                                                           gasto_num == 0 | gasto_num == 5001~NA,
                                                           gasto_num >= 10 & gasto_num <=50~"Entre R$10,00 a R$50,00",
                                                           gasto_num >= 51 & gasto_num <=100~"Entre R$51,00 a R$100,00",
                                                           gasto_num >= 101 & gasto_num <=200~"Entre R$101,00 a R$200,00",
                                                           gasto_num >= 201 & gasto_num <=300~"Entre R$201,00 a R$300,00",
                                                           gasto_num >= 301 & gasto_num <=400~"Entre R$301,00 a R$400,00",
                                                           gasto_num >= 401 & gasto_num <=500~"Entre R$401,00 a R$500,00",
                                                           gasto_num > 500~"Acima de R$501,00",
                                                           is.na(gasto_num)~NA,
                                                           TRUE~NA),
                                                         gasto_num = case_when(
                                                           gasto_compras %in% c("80 á 100 reais", "100,00")~"Entre R$51,00 a R$100,00",
                                                           gasto_compras %in% c("180 a 200 reais", "150 á160 reais", "120 á 450", "180 á 200 reais", "120 á150 reais", "200,00")~"Entre R$101,00 a R$200,00",
                                                           gasto_compras%in%c("200 á 300 reais", "200/300 reais", "200 á250 reais")~"Entre R$201,00 a R$300,00",
                                                           gasto_compras%in%c("300 á 400 reais")~"Entre R$301,00 a R$400,00",
                                                           gasto_compras%in%c("400 a 500 reais", "400 á 500 reais", "400 á 800 reais", "400á 500 reais ou mais", "450 a 500")~"Entre R$401,00 a R$500,00",
                                                           gasto_compras%in%c("500 á 600 reais", "500 a 800 reais", "500 á600 reais", "500 á 800 reais", "600 á 1000 reais", "900 á 1000 reais")~"Acima de R$501,00",
                                                           str_detect(gasto_compras, "Entre|Acima") == T ~ gasto_compras,
                                                           TRUE~gasto_num
                                                         )) %>% 
  mutate(gasto_compras = NULL)




rbot <- rbot %>% left_join(compras, by = "id") %>% mutate(
  gasto_compras = gasto_num,
  gasto_num = NULL
)


cultura <- rbot %>% select(id, gasto_cultura) %>% mutate(gasto_num= as.numeric(gsub("[^0-9.]","",gasto_cultura)),
                                                         gasto_num = case_when(
                                                           gasto_num >= 10000~NA,
                                                           gasto_num == 0 | gasto_num == 5001 | gasto_num == 8060 | gasto_num == 5060 | gasto_num == 8090~NA,
                                                           gasto_num >= 10 & gasto_num <=50~"Entre R$10,00 a R$50,00",
                                                           gasto_num >= 51 & gasto_num <=100~"Entre R$51,00 a R$100,00",
                                                           gasto_num >= 101 & gasto_num <=200~"Entre R$101,00 a R$200,00",
                                                           gasto_num >= 201 & gasto_num <=300~"Entre R$201,00 a R$300,00",
                                                           gasto_num >= 301 & gasto_num <=400~"Entre R$301,00 a R$400,00",
                                                           gasto_num >= 401 & gasto_num <=500~"Entre R$401,00 a R$500,00",
                                                           gasto_num > 500~"Acima de R$501,00",
                                                           is.na(gasto_num)~NA,
                                                           TRUE~NA),
                                                         gasto_num = case_when(
                                                           gasto_cultura %in% c("80 á 100 reais", "100,00","50 á 60 reais","80 á90 reais")~"Entre R$51,00 a R$100,00",
                                                           gasto_cultura %in% c("180 a 200 reais", "150 á160 reais", "120 á 450", "180 á 200 reais","100 á120 reais", "200 120 reais reais","120 á150 reais", "200,00","100á 150 reais","140 á 150 reais","100 á 150 reais","100 á 200 reais","100 á150 reais","100/200 reais")~"Entre R$101,00 a R$200,00",
                                                           gasto_cultura%in%c("200 á 300 reais", "200/300 reais", "200 á250 reais")~"Entre R$201,00 a R$300,00",
                                                           gasto_cultura%in%c("300 á 400 reais","300 á 400 reais")~"Entre R$301,00 a R$400,00",
                                                           gasto_cultura%in%c("400 a 500 reais", "400 á 500 reais", "400 á 800 reais", "400á 500 reais ou mais", "450 a 500")~"Entre R$401,00 a R$500,00",
                                                           gasto_cultura%in%c("500 á 600 reais", "500 a 800 reais", "500 á600 reais", "500 á 800 reais", "600 á 1000 reais", "900 á 1000 reais","800 á 1000 reais")~"Acima de R$501,00",
                                                           str_detect(gasto_cultura, "Entre|Acima") == T ~ gasto_cultura,
                                                           TRUE~gasto_num
                                                         )) %>% 
  mutate(gasto_cultura = NULL)




rbot <- rbot %>% left_join(cultura, by = "id") %>% mutate(
  gasto_cultura = gasto_num,
  gasto_num = NULL
)

# Criando o vetor 1 com as entradas fornecidas
vetor1 <- c(NA, "Eu e meu esposo", "Somente eu", "4.0", "Só eu", "1.0", "Eu minha esposa e meus 2 filhos",
            "2.0", "3.0", "5.0", "Uma", "1 pessoa", "Eu minha esposa e meu filho", 
            "Eu meu esposo e minha filha", "2 pessoas", "0.0", "Eu e meu namorado", "6 pessoas", "3 pessoas",
            "Só eu mesmo.", "Eu sozinha", "6.0", "Eu e minha irmã", "Eu e minha esposa", "6 amigos",
            "Eu e minha mãe", "Só eu mesmo", "Eu e a esposa", "Eu e meu filho", "Nenhuma", "Eu minha esposa e meus 3 filhos",
            "4 pessoas", "5 pessoas", "8 pessoas", "10 pessoas", "Eu e meu filhos", "Eu e meus filhos",
            "Eu minha mãe e meus irmãos", "Eu minha esposa e meus filhos", "Eu minha esposa e minhas filhas",
            "Só eu pois sou viúvo", "Vim sozinho", "Só e minha esposa", "Eu minha esposa e minha filha",
            "Eu e minha namorada", "7.0", "Eu vim sozinho", "Eu vim sozinha", "Eu minha esposa", "Vim sozinha",
            "Não sei", "2 duas", "Não sabe responder", "Nao sei", "Apenas eu", "Ninguém", "Três amigos",
            "Só 1", "1 pessoa só", "300.0", "So uma", "Só uma pessoa mesmo", "So uma pessoa mesmo",
            "Não quis responder", "Uma pessoa só", "02", "Nr", "Não quis informar", "60.0", "00",
            "Vinhemos em um grupo grande, 15 pessoas", "33.0", "20.0", "15 pessoas", "400.0",
            "Duas", "200.0", "Está sozinho", "Eu", "Não respondeu", "01", "11.0", "100.0",
            "Não responderam", "4", "1", "2", "3", "5", "6", "10", "7", "9", "8", "20", "12",
            "14", "Acima de 5 pessoas", "2 a 5 pessoas", "Acima de 10 pessoas (caravana)", "Não sabe",
            "40", "46", "42", "48", "50", "30", "8.0", "-", "0", "Eu e minha filha", "Não teve", "Eu e esposo")

vetor2 <- c(NA, 2, 1, 4, 1, 1, 4, 2, 3, 5, 1, 1, 3, 3, 2, 0, 2, 6, 3, 1, 1, 6, 2, 2, 6, 2, 1, 2, 2, 0, 5, 4, 5, 8, 10, 2, 2, 4, 4, 4, 1, 1, 2, 3, 2, 7, 1, 1, 2, 1, NA, 2, NA, NA, 1, 0, 3, 1, 1, 300, 1, 1, 1, NA, 1, 2, NA, NA, 60, 0, 15, 33, 20, 15, 400, 2, 200, 1, 1, NA, 1, 11, 100, NA, 4, 1, 2, 3, 5, 6, 10, 7, 9, 8, 20, 12, 14, 5, 5, 10, NA, 40, 46, 42, 48, 50, 30, 8, NA, 0, 2, NA, 2)

df <- data.frame(qtd_gastos = vetor1, qtd_gasto_tratado = vetor2)

rbot <- rbot %>% left_join(df, by = "qtd_gastos") %>% mutate(qtd_gastos= qtd_gasto_tratado, qtd_gasto_tratado = NULL)


df <- read_xlsx("df.xlsx")

rbot <- rbot %>% left_join(df %>% unique(), by = "dia_evento") %>% mutate(dia_evento = dia_evento_tratado, dia_evento_tratado = NULL)


rbot <- rbot %>% mutate(avaliacao_local = as.numeric(avaliacao_local)) %>% mutate(avaliacao_local=ifelse(avaliacao_local == 11,NA,avaliacao_local))
rbot <- rbot %>% mutate(avaliacao_infra = as.numeric(avaliacao_infra)) %>% mutate(avaliacao_infra=ifelse(avaliacao_infra == 11,NA,avaliacao_infra))
rbot <- rbot %>% mutate(avaliacao_org = as.numeric(avaliacao_org)) %>% mutate(avaliacao_org=ifelse(avaliacao_org == 11,NA,avaliacao_org))
rbot <- rbot %>% mutate(avaliacao_divulg = as.numeric(avaliacao_divulg)) %>% mutate(avaliacao_divulg=ifelse(avaliacao_divulg == 11,NA,avaliacao_divulg))
rbot <- rbot %>% mutate(avaliacao_comida = as.numeric(avaliacao_comida)) %>% mutate(avaliacao_comida=ifelse(avaliacao_comida == 11,NA,avaliacao_comida))
rbot <- rbot %>% mutate(avaliacao_preco = as.numeric(avaliacao_preco)) %>% mutate(avaliacao_preco=ifelse(avaliacao_preco == 11,NA,avaliacao_preco))
rbot <- rbot %>% mutate(avaliacao_produtos = as.numeric(avaliacao_produtos)) %>% mutate(avaliacao_produtos=ifelse(avaliacao_produtos == 11,NA,avaliacao_produtos))
rbot <- rbot %>% mutate(avaliacao_prog = as.numeric(avaliacao_prog)) %>% mutate(avaliacao_prog=ifelse(avaliacao_prog == 11,NA,avaliacao_prog))
rbot <- rbot %>% mutate(avaliacao_representacao = as.numeric(avaliacao_representacao)) %>% mutate(avaliacao_representacao=ifelse(avaliacao_representacao == 11,NA,avaliacao_representacao))
rbot <- rbot %>% mutate(avaliacao_diversidade = as.numeric(avaliacao_diversidade)) %>% mutate(avaliacao_diversidade=ifelse(avaliacao_diversidade == 11,NA,avaliacao_diversidade))
rbot <- rbot %>% mutate(avaliacao_aproximacao = as.numeric(avaliacao_aproximacao)) %>% mutate(avaliacao_aproximacao=ifelse(avaliacao_aproximacao == 11,NA,avaliacao_aproximacao))
rbot <- rbot %>% mutate(avaliacao_acolhimento = as.numeric(avaliacao_acolhimento)) %>% mutate(avaliacao_acolhimento=ifelse(avaliacao_acolhimento == 11,NA,avaliacao_acolhimento))
rbot <- rbot %>% mutate(avaliacao_seguranca = as.numeric(avaliacao_seguranca)) %>% mutate(avaliacao_seguranca=ifelse(avaliacao_seguranca == 11,NA,avaliacao_seguranca))
rbot <- rbot %>% mutate(avaliacao_acessibilidade = as.numeric(avaliacao_acessibilidade)) %>% mutate(avaliacao_acessibilidade=ifelse(avaliacao_acessibilidade == 11,NA,avaliacao_acessibilidade))
rbot <- rbot %>% mutate(avaliacao_limpeza = as.numeric(avaliacao_limpeza)) %>% mutate(avaliacao_limpeza=ifelse(avaliacao_limpeza == 11,NA,avaliacao_limpeza))
rbot <- rbot %>% mutate(avaliacao_geral = as.numeric(avaliacao_geral)) %>% mutate(avaliacao_geral=ifelse(avaliacao_geral == 11,NA,avaliacao_geral))



