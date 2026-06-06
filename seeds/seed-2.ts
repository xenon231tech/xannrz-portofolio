/**
 * Seed $i
 * Initial data seeding for database
 */

export const seed$i = [
  {
    id: $i * 100 + 1,
    name: `Item ${$i}-1`,
    description: `Description for item ${$i}-1`,
    active: true,
  },
  {
    id: $i * 100 + 2,
    name: `Item ${$i}-2`,
    description: `Description for item ${$i}-2`,
    active: true,
  },
  {
    id: $i * 100 + 3,
    name: `Item ${$i}-3`,
    description: `Description for item ${$i}-3`,
    active: false,
  },
];

export default seed$i;
