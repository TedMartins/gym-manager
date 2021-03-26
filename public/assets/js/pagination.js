// = Pagination ==========/

function paginate(selectedPage, totalPages) {
    let pages = [],
        oldPage

    for (let currentPage = 1; currentPage <= totalPages; currentPage++) {

        const firstAndLastPage = currentPage == 1 || currentPage == totalPages
        const pagesAfterSelectedPage = currentPage <= selectedPage + 2
        const pagesBeforeSelectedPage = currentPage >= selectedPage - 2

        if (firstAndLastPage || pagesBeforeSelectedPage && pagesAfterSelectedPage) {
            
            if (oldPage && currentPage - oldPage > 2) {
                pages.push('...')
            }

            if (oldPage && currentPage - oldPage == 2) {
                pages.push(oldPage + 1)
            }

            oldPage = currentPage
            pages.push(currentPage);
        }
    }

    return pages
}

function createPagination() {

const pagination = document.querySelector('.pagination')
const filter = pagination.dataset.filter
const page = +pagination.dataset.page
const total = +pagination.dataset.total
const pages = paginate(page, total)

const pathName = location.pathname


let elements = ''

for (let page of pages) {
    if(String(page).includes('...')) {
        elements += `<span>${page}</span>`
    } else {
        if ( filter ) {
            elements += `<a href="${pathName}?page=${page}&filter=${filter}">${page}</a>`
        } else {
            elements += `<a href="${pathName}?page=${page}">${page}</a>`
        }
    }
}

pagination.innerHTML = elements

}

createPagination()