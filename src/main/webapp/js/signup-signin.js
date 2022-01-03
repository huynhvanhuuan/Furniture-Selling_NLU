const btnSignin = document.querySelector('.sign-in')
const boxPopup = document.querySelector('.box-signup-signin')
const formPopup = document.querySelector('.signup-signin')
const btnClose = document.querySelector('.popup-close')

btnSignin.onclick = () => {
    boxPopup.style.opacity = 1
    boxPopup.style.visibility = 'visible'
    formPopup.classList.toggle('show-popup')
}

btnClose.onclick = () => {
    boxPopup.style.opacity = 0
    boxPopup.style.visibility = 'hidden'
    formPopup.classList.toggle('show-popup')
}

// show hide password
const iconShowSignin = document.querySelector('.signin-password ~ .hide-password')
const inputPassSignin = document.querySelector('.signin-password')

const iconShowSignup = document.querySelector('.signup-password ~ .hide-password')
const inputPassSignup = document.querySelector('.signup-password')

const iconShowComfirm = document.querySelector('.comfirm-password ~ .hide-password')
const inputPassComfirm = document.querySelector('.comfirm-password')

function handleShowPassword(inputPass, iconShow) {
    iconShow.addEventListener('mouseover', () => {
        if (inputPass === document.activeElement) inputPass.classList.add('focus')
    })

    iconShow.addEventListener('click', () => {
        inputPass.focus()
        if (iconShow.classList.contains('fa-eye-slash')) {
            iconShow.classList.remove('fa-eye-slash')
            iconShow.classList.add('fa-eye')
            inputPass.setAttribute('type', 'text')
        } else {
            iconShow.classList.remove('fa-eye')
            iconShow.classList.add('fa-eye-slash')

            inputPass.setAttribute('type', 'password')
        }
    })
    inputPass.addEventListener('click', () => inputPass.classList.add('focus'))
    inputPass.onmouseleave = () => inputPass.classList.remove('focus')
}

handleShowPassword(inputPassSignin, iconShowSignin)
handleShowPassword(inputPassSignup, iconShowSignup)
handleShowPassword(inputPassComfirm, iconShowComfirm)

// swipe to sign up
const swipeSignUp = document.querySelector('.swipe-to-signup')
const boxSignIn = document.querySelector('.signin')

swipeSignUp.onclick = () => {
    boxSignIn.style.marginLeft = '-90rem'
}

const swipeSignIn = document.querySelector('.swipe-to-signin')
const boxSignUp = document.querySelector('.signup')
swipeSignIn.onclick = () => {
    boxSignUp.style.marginRight = '90rem'

    boxSignIn.style.marginLeft = '0rem'
}
