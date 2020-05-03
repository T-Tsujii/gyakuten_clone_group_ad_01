require('application.js')

const solitudeButton = document.getElementById('solitude-button')

const button_activation = () => {
    if (solitudeContent.value === '') {
        solitudeButton.classList.add('disabled')
    } else {
        solitudeButton.classList.remove('disabled')
    }
}

solitudeContent.addEventListener('input', () => {
    button_activation()
})