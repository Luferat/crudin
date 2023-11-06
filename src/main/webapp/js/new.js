$(document).ready(runNew);

function runNew() {
	$(document).on('click', '.tabs button', getButton);
	if (sessionStorage.activeBtn == undefined)
		sessionStorage.activeBtn = 'item'
	activeTab(sessionStorage.activeBtn)
}

function getButton(e) {
	const activeBtn = e.target.id
	sessionStorage.activeBtn = activeBtn
	activeTab(activeBtn)
}

function activeTab(activeId) {
	$('.tabs button').removeClass('active')
	$('#' + activeId).addClass('active')
	$('.form-frame>div').hide()
	$('#form' + activeId).show()
}