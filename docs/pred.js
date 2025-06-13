// Load dataset JSON from your hosted file
async function loadDataset() {
  const response = await fetch('filtered_data.json');
  if (!response.ok) throw new Error('Failed to load dataset');
  let data = await response.json();
  // Filter for age ≤ 8
  data = data.filter(car => car.age <= 8);
  return data;
}

// Build brand->models map and populate brand dropdown
function processBrandsModels(data) {
  const brandModelMap = new Map();
  data.forEach(car => {
    if (!brandModelMap.has(car.brand)) brandModelMap.set(car.brand, new Set());
    brandModelMap.get(car.brand).add(car.model);
  });
  // Populate brand dropdown from brandModelMap keys
  // Attach eventListener to brand dropdown to populate model dropdown accordingly
  return brandModelMap;
}

// Prediction function format
function predictPrice(data, inputs) {
  const ageTolerance = 2; // years
  const distTolerance = 15000; // kms

  let filtered = data.filter(car =>
    car.brand === inputs.brand &&
    car.model === inputs.model &&
    car.fuel === inputs.fuel &&
    car.gear === inputs.gear &&
    Math.abs(car.age - inputs.age) <= ageTolerance &&
    Math.abs(car.distance - inputs.distance) <= distTolerance
  );

  if (filtered.length === 0) {
    filtered = data.filter(car =>
      car.brand === inputs.brand &&
      car.model === inputs.model &&
      car.fuel === inputs.fuel &&
      car.gear === inputs.gear &&
      Math.abs(car.age - inputs.age) <= ageTolerance
    );
  }

  if (filtered.length === 0) {
    filtered = data.filter(car => car.brand === inputs.brand && car.model === inputs.model && car.age <= 8);
  }

  if (filtered.length === 0) {
    return null;
  }

  return filtered.reduce((acc, c) => acc + c.askprice, 0) / filtered.length;
}

// Attach these methods and integrate with your existing UI event handlers
