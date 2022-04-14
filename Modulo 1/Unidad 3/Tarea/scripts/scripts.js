var form = document.getElementById("my-form");
    
async function handleSubmit(event) {
	
	event.preventDefault();

	var status = document.getElementById("my-form-status");
	var submit = document.getElementById("button.submit");
	var data = new FormData(event.target);

	submit.disabled = 'disabled';

	fetch(event.target.action, {
		method: form.method,
		body: data,
		headers: {
			'Accept': 'application/json'
		}
	})
	.then(response => {
		if (response.ok) {
			status.style.display = 'block';
			//status.innerHTML = "Thanks for your submission!";
			form.reset();

			setTimeout(function(){
				var myModalEl = document.querySelector('#exampleModal');
				var modal = bootstrap.Modal.getOrCreateInstance(myModalEl);
				modal.hide();
				submit.disabled = '';
				status.style.display = 'none';
			}, 1500);
		} 
		else {
			response.json().then(data => {
				if (Object.hasOwn(data, 'errors')) {
					status.innerHTML = data["errors"].map(error => error["message"]).join(", ")
				} 
				else {
					status.innerHTML = "Ups! Se produjo un error al enviar el formulario";
				}
			});
		}
	})
	.catch(error => {
		status.innerHTML = "Ups! Se produjo un error al enviar el formulario";
	});
}

form.addEventListener("submit", handleSubmit);
