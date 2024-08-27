import React from 'react';
import './App.css';

// Definindo uma interface para as props
interface WelcomeProps {
  name: string;
  age: number;
  address: string;
  city: string;
}

// Componente funcional que utiliza props
const Welcome: React.FC<WelcomeProps> = ({ name, age, address, city }) => {
  return (
    <div>
      <h1>Hello, {name}!</h1>
      <p>You are {age} years old.</p>
      <p>Your address: {address}</p>
      <p>Your city: {city}</p>
    </div>
  );
};

function App() {
  return (
    <div className='App'>
      <Welcome name='Alice' age={25} address='Rua 11, 17' city='manchester'/>
      <Welcome name='Bob' age={30} address='Rua 12, 15' city='sao paulo'/>
      <Welcome name='Charlie' age={35} address='Rua 10, 15' city='rio de janeiro'/>
    </div>
  );
}
export default App;