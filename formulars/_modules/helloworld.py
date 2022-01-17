def hello():
    return "Hello World Alhamdu!!"

#adding cross call function from salt

def date():
    return __salt__['cmd.run']('date +"%m-%d-%Y"')
