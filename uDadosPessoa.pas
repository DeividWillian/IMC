unit uDadosPessoa;

interface

uses
  System.SysUtils;

   Type
    RDados_Pessoa = record
      Altura: Double;
      Peso: Double;
      Sexo: String;
      IMC: String;
  end;

  function CalcularIMC(p_Peso, p_Altura: Double; p_Sexo: String): String;

  var
   P_Dados_Pessoa : RDados_Pessoa;

implementation
   function CalcularIMC(p_Peso, p_Altura: Double; p_Sexo: String): String;
var
  l_IMC: Double;
  l_StrIMC: String;
begin
  if p_Sexo = '' then
    raise Exception.Create('Obrigatório informar o sexo');

  try
    l_IMC  := p_Peso/(p_Altura*p_Altura);
    if p_Sexo = 'Feminino' then
    begin
      if (l_IMC < 19.1) then
         l_StrIMC := FloatToStr(l_IMC) + 'abaixo do peso'
      else
        if (l_IMC >= 19.1) and (l_IMC <= 25.8) then
           l_StrIMC := FloatToStr(l_IMC)  + 'no peso normal'
        else
          if (l_IMC > 25.8) and (l_IMC <= 27.3) then
             l_StrIMC := FloatToStr(l_IMC)  + 'marginalmente acima do peso'
          else
            if (l_IMC > 27.3) and (l_IMC <= 32.3) then
               l_StrIMC := FloatToStr(l_IMC)  + 'acima do peso ideal'
            else
              if (l_IMC > 32.3) then
                 l_StrIMC := FloatToStr(l_IMC)  + 'obeso';
    end
    else
    begin
      if p_Sexo = 'Masculino' then
      begin
        if (l_IMC < 20.7) then
           l_StrIMC :=  'abaixo do peso'
        else
          if (l_IMC >= 20.7) and (l_IMC <= 26.4) then
             l_StrIMC := 'no peso normal'
          else
            if (l_IMC > 26.4) and (l_IMC <= 27.8) then
               l_StrIMC := 'marginalmente acima do peso'
            else
              if (l_IMC > 27.8) and (l_IMC <= 31.1) then
                 l_StrIMC :=  'acima do peso ideal'
              else
                if (l_IMC > 31.1) then
                   l_StrIMC :=  'obeso';
      end;
    end;
    // Com l_StrIMC sai o resultado texto
    //Result := l_StrIMC;
    Result := FormatFloat(',.00', l_IMC) + ' ' + (l_StrIMC);
  except
    raise Exception.Create('Erro ao efetuar cálculo do IMC.');
  End;

end;

end.
