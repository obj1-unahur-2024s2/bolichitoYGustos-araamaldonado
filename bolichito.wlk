import objetosBol.*
import personas.*


object bolichito {
    var objetoEnVidriera = remera
    var objetoEnMostrador = pelota


    method objetoEnVidriera (unObjeto) {
        objetoEnVidriera = unObjeto
    }
    method objetoEnVidriera() = objetoEnVidriera


    method objetoEnMostrador(unObjeto) {
        objetoEnMostrador = unObjeto
    }
    method objetoEnMostrador() = objetoEnMostrador


    method esBrillante() = 
    objetoEnMostrador.material().esBrillante()
    and objetoEnVidriera.material().esBrillante()


    method esMonocromatico() {
        return objetoEnVidriera.color() == objetoEnMostrador.color()
    }


    method estaEquilibrado() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }


    method hayObjetoDeColor(unColor) {
        return objetoEnMostrador.color() == unColor ||
        objetoEnVidriera.color() == unColor
    }


    method puedeMejorar() {
        return !self.estaEquilibrado() ||
        self.esMonocromatico()
    }


    method lePuedoOfrecerA(persona) {
        return persona.leGusta(objetoEnMostrador)
        || persona.leGusta(objetoEnVidriera)
    }
}