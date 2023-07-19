const cds = require('@sap/cds')
const log = cds.log('exit')
module.exports = class CatalogService extends cds.ApplicationService {
    init() {
        this.after('READ', 'Rounds', async function (rounds, req) {
            log.info('After Rounds Read')
            for (let round of rounds) {
                if (round.holes) for (let each of round.holes) {
                    let score = await cds.tx(req).run(SELECT.from('CatalogService.Rounds.holes.shots').columns('count(*) as COUNT').where('up__ID =', each.ID))
                    each.score = score[0].COUNT
                }
            }
        })

        this.before('CREATE', 'Rounds', async function (req) {
            log.info('Before Rounds Create')
            if (req.data) {
                log.info(req.data)
                if (req.data.holes) for (let each of req.data.holes) {
                    let score = each.shots.length
                    each.score = score
                    each.result_code = each.score - each.par
                    if (each.result_code < -3 || each.result_code > 3) {
                        each.result_code = 99
                    }
                    if (each.score == 1) {
                        each.result_code = 100
                    }
                }
            }
        })

        this.before('CREATE', 'Rounds.holes', async function (req) {
            log.info('Before Rounds.holes Create')
            if (req.data) {
                let score = req.data.shots.length
                req.data.score = score
                req.data.result_code = req.data.score - req.data.par
                if (req.data.result_code < -3 || req.data.result_code > 3) {
                    req.data.result_code = 99
                }
                if (req.data.score == 1) {
                    req.data.result_code = 100
                }
            }

        })

        this.after('READ', 'Rounds.holes', async function (holes, req) {
            log.info('After Rounds_holes Read')
            if (holes) for (let each of holes) {
                let score = await cds.tx(req).run(SELECT.from('CatalogService.Rounds.holes.shots').columns('count(*) as COUNT').where('up__ID =', each.ID))
                each.score = score[0].COUNT
            }
        })

        return super.init()
    }
}


