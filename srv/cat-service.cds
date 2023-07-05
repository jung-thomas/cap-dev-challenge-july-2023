using { golf } from '../db/schema';

service CatalogService @(path:'/browse') {
  entity Rounds as projection on golf.Rounds;
}