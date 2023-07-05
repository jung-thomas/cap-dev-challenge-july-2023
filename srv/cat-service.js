const cds = require('@sap/cds')
const log = cds.log('exit')
module.exports = class CatalogService extends cds.ApplicationService {
    init() {
        this.after('READ', 'Rounds', async function (rounds, req) {
            log.info('After Rounds Read')
            for (let round of rounds) {
                for (let each of round.holes) {
                    let score = await cds.tx(req).run(SELECT.from('CatalogService.Rounds.holes.shots').columns('count(*) as COUNT').where('up__ID =', each.ID))
                    each.score = score[0].COUNT
                }
            }
        })

        this.after('READ', 'Rounds.holes', async function (holes, req) {
            log.info('After Rounds_holes Read')
            for (let each of holes) {
                let score = await cds.tx(req).run(SELECT.from('CatalogService.Rounds.holes.shots').columns('count(*) as COUNT').where('up__ID =', each.ID))
                each.score = score[0].COUNT
            }
        })

        return super.init()
    }
}
