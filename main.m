  % Algorithm multiply two numbers
  % Written by Concepta Njolima

  firstNumber=input("Enter first number: ")
  secondNumber=input("Enter second number: ")

  %initialize variables
  carry=0
  result=0
  finalResult=0
  number=firstNumber
  multiplier=secondNumber
  i=0 
  prod=0
  j=0

  while multiplier>0  % multiply by each digit in the multiplier
    while number>0  % multiply all the single digits in the number
        digitMultiplier=mod(multiplier,10)
        num=mod(number,10)
        prod=num*digitMultiplier+carry
        if prod>10
          carry=floor(prod/10)
          prod=mod(prod,10)
          number=floor(number/10)
        else
          carry=0
          number=floor(number/10)
        endif
       result=(prod*10.^i)+result
       i=i+1
      %endif
    endwhile
    if carry ~=0
      result=result+(carry*10.^i)
    endif
    multiplier=floor(multiplier/10)
    finalResult=finalResult+(result*10.^j)
    j=j+1 % move the next single-digit multiplication result to the left by one place value
    i=0   % reset i
    result=0  % reset the single-digit product
    number=firstNumber  % set the number to the initial first number
  endwhile
  fprintf('The product is %i\n',finalResult)
