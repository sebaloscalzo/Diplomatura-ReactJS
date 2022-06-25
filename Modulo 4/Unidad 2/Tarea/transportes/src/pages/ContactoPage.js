import React from 'react';
import '../styles/components/pages/ContactoPage.css';

const ContactoPage = (props) => {
	return (
		<main className='holder contacto'>
			<div>
				<h2>Contacto Rapido</h2>
				<form action='' method='' className='formulario'>
					<p>
						<label htmlFor='nombre'>Nombre</label>&nbsp;
						<input type='text' name="nombre"></input>
					</p>
					<p>
						<label htmlFor='email'>Email</label>&nbsp;
						<input type='text' name="email"></input>
					</p>
					<p>
						<label htmlFor='telefono'>Telefono</label>&nbsp;
						<input type='text' name="telefono"></input>
					</p>
					<p>
						<label htmlFor='mensaje'>Mensaje</label>&nbsp;
						<textarea name="mensaje"></textarea>
					</p>
				</form>
			</div>
		</main>

	);
}

export default ContactoPage;