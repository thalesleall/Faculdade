// Import necessary modules and hooks
import { useState, useEffect } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { createCar, getCarById, updateCar } from '../services/api';

// Define the Car interface here
interface Car {
    id: string;
    model: string;
    brand: string;
    year: number;
    color: string;
    kms: number;
}

// Define your component
function CarForm() {
    const { id } = useParams<{ id: string }>();
    const navigate = useNavigate();
    const [car, setCar] = useState<Car>({
        id: '',
        model: '',
        brand: '',
        year: 0,
        color: '',
        kms: 0,
    });

    useEffect(() => {
        if (id) {
            loadCar();
        }
    }, [id]);

    const loadCar = async () => {
        try {
            const response = await getCarById(id as string);
            setCar(response.data);
        } catch (error) {
            console.error("Error loading car data", error);
        }
    };

    const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
        setCar({
            ...car,
            [e.target.name]: e.target.value,
        });
    };

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault();
        try {
            if (id) {
                await updateCar(id, car);
            } else {
                await createCar(car);
            }
            navigate('/');
        } catch (error) {
            console.error("Error saving car", error);
        }
    };

    return (
        <form onSubmit={handleSubmit}>
            <div>
                <label>Model</label>
                <input
                    type="text"
                    name="model"
                    value={car.model}
                    onChange={handleChange}
                />
            </div>
            <div>
                <label>Brand</label>
                <input
                    type="text"
                    name="brand"
                    value={car.brand}
                    onChange={handleChange}
                />
            </div>
            <div>
                <label>Year</label>
                <input
                    type="number"
                    name="year"
                    value={car.year}
                    onChange={handleChange}
                />
            </div>
            <div>
                <label>Color</label>
                <input
                    type="text"
                    name="color"
                    value={car.color}
                    onChange={handleChange}
                />
            </div>
            <div>
                <label>Kms</label>
                <input
                    type="number"
                    name="kms"
                    value={car.kms}
                    onChange={handleChange}
                />
            </div>
            <button type="submit">Save</button>
        </form>
    );
}

// Export the component
export default CarForm;
