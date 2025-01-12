//
//  NightscoutTreatment.swift
//  LoopCaregiver
//
//  Created by Bill Gestrich on 1/7/23.
//

import Foundation
import NightscoutKit

extension [NightscoutTreatment] {
    func bolusTreatments() -> [BolusNightscoutTreatment] {
        return self.compactMap { treatment in
            if let bolus = treatment as? BolusNightscoutTreatment {
                return bolus
            } else {
                return nil
            }
        }
    }
    
    func basalTreatments() -> [TempBasalNightscoutTreatment] {
        return self.compactMap { treatment in
            if let basal = treatment as? TempBasalNightscoutTreatment {
                return basal
            } else {
                return nil
            }
        }
    }
    
    func carbTreatments() -> [CarbCorrectionNightscoutTreatment] {
        return self.compactMap { treatment in
            if let carb = treatment as? CarbCorrectionNightscoutTreatment {
                return carb
            } else {
                return nil
            }
        }
    }
    
    func overrideTreatments() -> [OverrideTreatment] {
        return self.compactMap { treatment in
            if let override = treatment as? OverrideTreatment {
                return override
            } else {
                return nil
            }
        }
    }
    
    func pumpSuspendTreatments() -> [PumpSuspendTreatment] {
        return self.compactMap { treatment in
            if let suspend = treatment as? PumpSuspendTreatment {
                return suspend
            } else {
                return nil
            }
        }
    }
    
    func pumpResumeTreatments() -> [PumpResumeTreatment] {
        return self.compactMap { treatment in
            if let resume = treatment as? PumpResumeTreatment {
                return resume
            } else {
                return nil
            }
        }
    }
}
