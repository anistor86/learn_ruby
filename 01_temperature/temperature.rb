#write your code here
def ftoc(temperature)
  temperature - 32 #freezing temperature
  ((temperature - 32) * 5) / 9 #boiling water, body/arbitrary temperature
end

def ctof(temperature)
  temperature + 32 #freezing temperature
  ((temperature * 9.0) / 5.0) + 32 #boiling water, body/arbitrary temperature
end
