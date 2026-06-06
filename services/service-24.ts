/**
 * Service $i
 * Handles business logic and API calls
 */

class Service$i {
  private baseUrl: string = process.env.VITE_API_URL || 'http://localhost:3000';

  async fetchData(id?: string) {
    try {
      const url = id ? `${this.baseUrl}/api/data/${id}` : `${this.baseUrl}/api/data`;
      const response = await fetch(url);
      return await response.json();
    } catch (error) {
      console.error('Error fetching data:', error);
      throw error;
    }
  }

  async createData(payload: any) {
    try {
      const response = await fetch(`${this.baseUrl}/api/data`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(payload),
      });
      return await response.json();
    } catch (error) {
      console.error('Error creating data:', error);
      throw error;
    }
  }

  async updateData(id: string, payload: any) {
    try {
      const response = await fetch(`${this.baseUrl}/api/data/${id}`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(payload),
      });
      return await response.json();
    } catch (error) {
      console.error('Error updating data:', error);
      throw error;
    }
  }

  async deleteData(id: string) {
    try {
      const response = await fetch(`${this.baseUrl}/api/data/${id}`, {
        method: 'DELETE',
      });
      return await response.json();
    } catch (error) {
      console.error('Error deleting data:', error);
      throw error;
    }
  }
}

export default new Service$i();
