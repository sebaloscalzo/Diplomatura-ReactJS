import React from 'react';
import { Link } from 'react-router-dom';

const Nav = (props) => {
	return (
		<nav>
			<div className='center'>
				<div><Link to="/">Home</Link></div>
				<div><Link to="/nosotros">Nosotros</Link></div>
				<div><Link to="/novedades">Novedades</Link></div>
				<div><Link to="/contacto">Contacto</Link></div>
			</div>
		</nav>
	);
}

export default Nav;