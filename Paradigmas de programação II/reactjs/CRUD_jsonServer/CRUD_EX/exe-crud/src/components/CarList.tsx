import { useEffect, useState } from 'react';
import { getCars, deleteCar } from '../services/api';
import { Link } from 'react-router-dom';

// Define the Car interface here
interface Car {
    id: string;
    model: string;
    brand: string;
    year: number;
    color: string;
    kms: number;
}

function CarList() {
    const [cars, setCars] = useState<Car[]>([]);

    useEffect(() => {
        loadCars();
    }, []);

    const loadCars = async () => {
        const response = await getCars();
        setCars(response.data);
    };

    const handleDelete = async (id: string) => {
        await deleteCar(id);
        loadCars();
    };

    return (
        <div>
            <h1>Car List</h1>
            <Link to="/add">Add Car</Link>
            <ul>
                {cars.map((car) => (
                    <li key={car.id}>
                        {car.model} - {car.brand} - {car.year} - {car.color} - {car.kms} Kms
                        <Link to={`/edit/${car.id}`}>Edit</Link>
                        <button onClick={() => handleDelete(car.id)}>Delete</button>
                    </li>
                ))}
            </ul>
        </div>
    );
}

export default CarList;
