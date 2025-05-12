import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.caiobueno.sankey_ai.dev"
            resValue(type = "string", name = "app_name", value = "Sankey Ai Dev")
        }
        create("stg") {
            dimension = "flavor-type"
            applicationId = "com.caiobueno.sankey_ai.stg"
            resValue(type = "string", name = "app_name", value = "Sankey Ai Stg")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.caiobueno.sankey_ai"
            resValue(type = "string", name = "app_name", value = "Sankey Ai")
        }
    }
}