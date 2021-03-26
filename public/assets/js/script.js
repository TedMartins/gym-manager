// = Active Page ==========/

const currentPage = location.pathname
const menuItems = document.querySelectorAll('.links a')

for (item of menuItems) {
    if (currentPage.includes(item.getAttribute('href'))) {
        item.classList.add('active')
    }
}

// = Delete Page ==========/

function pageDelete() {
    const formDelete = document.querySelector('.form-delete')
    formDelete.addEventListener('submit', function (event) {
        const confirmation = confirm('Are you sure you want to delete?')

        if (!confirmation) {
            event.preventDefault()
        }
    })
}