using {golf} from '../db/schema';

@protocol: [
  'odata-v4',
  'graphql'
]
service CatalogService @(path: 'browse') {

  @odata.draft.enabled: true
  entity Rounds as projection on golf.Rounds;
}
