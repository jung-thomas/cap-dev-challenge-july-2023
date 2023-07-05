const cds = require('@sap/cds')
class CatalogService extends cds.ApplicationService {
    init(){
        const { holes } = cds.entities ('golf.Rounds.holes')


        this.on('READ', holes, each => {

        })

        return super.init()
    }
}
module.exports = { CatalogService }
/* module.exports = cds.service.impl(function () {
    cds.after('READ', 'holes', holes => {
        for (let each of holes) {
            each.score = 2
        }
      })
}) */