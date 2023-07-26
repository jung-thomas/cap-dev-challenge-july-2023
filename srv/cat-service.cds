using {golf} from '../db/schema';
using {RemoteService as external} from './external/RemoteService';

@protocol: [
  'odata-v4',
  'graphql'
]
service CatalogService @(path: 'browse') {
  entity Players as projection on external.Players;
  @odata.draft.enabled: true
  entity Rounds  as projection on golf.Rounds;
}
