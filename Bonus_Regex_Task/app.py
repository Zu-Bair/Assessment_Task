#! python3
# Strong Password detection with Regexes
import re
# Set the initial variable as False so that when it is true later (i.e. strong password entered), the program exits.
passStrong = False


def passwordStrength():
    # Enter password text
    passwordText = input('Enter Password: ')

    # Strength Checks
    charRegex = re.compile(r'(\w{8,})')  # Check if password has atleast 8 characters
    lowerRegex = re.compile(r'[a-z]+') # Check if at least one lowercase letter
    upperRegex = re.compile(r'[A-Z]+')# Check if atleast one upper case letter
    digitRegex = re.compile(r'[0-9]+') # Check if at least one digit.
    specialCharRegex = re.compile(r'[@#$]')


    ''' TODO: Enter conditions to see if password passes all checks and then return
    a message if it does.'''
    if charRegex.findall(passwordText) == []:  # Checks if the password does not contain 8 characters and returns a message
        print('Password must contain atleast 8 characters')
    elif lowerRegex.findall(passwordText)==[]: # Checks if the password does not contain a lowercase character and returns a message
        print('Password must contain atleast one lowercase character')
    elif upperRegex.findall(passwordText)==[]: # Checks if the password does not contain an uppercase character and returns a message
        print('Password must contain atleast one uppercase character')
    elif digitRegex.findall(passwordText)==[]: # Checks if the password does not contain a digit character and returns a message
        print('Password must contain atleast one digit character')
    elif specialCharRegex.findall(passwordText) == []:  # Checks if the password contains special character
        print('Password must contain atleast one special character')
    else:  # if the above 4 conditions are successfully passed, pringt out a message saying the password is strong.
        print('Your password is strong. Good job!')
        global passStrong # Set global variable to access it outside function.
        passStrong=True
        return # break out of function.


while not passStrong:  # Continue looping until passStrong is set to True. Thereafter exit program.
    passwordStrength()
