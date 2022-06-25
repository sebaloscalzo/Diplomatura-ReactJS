import React from 'react';
import '../../styles/components/layout/Header.css';

const Header = (props) => {
	return (
		<header>
			<div className='homeimg'>
				<img src='/images/home/img01.png' alt="avion" width="320px"></img>
				<div className="titulo"><h1>Transportes X</h1></div>
			</div>

			{/* <div>
				<img src="images/logo192.png" width="100" alt="Transportes X"></img>
				
			</div> */}
		</header>
	);
}

export default Header;