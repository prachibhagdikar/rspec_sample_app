# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
a=21
b="21"
result = 21=='21'
console.log result


name="Ramu"
age=24
subject="Engineering"
verify_name = name?
verify_phone = phone?
console.log verify_name
console.log verify_phone


add = ->
a=20;b=30
c=a+b
console.log "Sum of the two numbers is: "+c  
add()

add =(a = 1, b = 2) ->
  c=a+b
  console.log "Sum of the two numbers is: "+c
add 10,20

#Calling the function with default arguments
add()

my_string = "Hello how are you"
console.log my_string

name = "Raju"
age = 26
message ="Hello #{name} your age is #{age}"
console.log message


start=0
end=9
numbers =[start..end]
console.log "The contents of the range are: "+ numbers

array = (num for num in [1..10] by 2)
console.log array