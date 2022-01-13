# add joint tips
import pymel.core as pm
tips = pm.selected()
distance = 8.0
for each in tips:
    oDup = pm.duplicate(each, n=each.name().replace(each.namespace(), '') + '_TIP')[0]
    pm.parent(oDup, each)
    oDup.setTranslation(each.getTranslation(space='object')*distance, space='object')
    oDup.radius.set(each.radius.get() * 2.0)