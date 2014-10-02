.class Lcom/viber/voip/settings/ui/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/ax;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/viber/voip/settings/ui/ay;->a:Lcom/viber/voip/settings/ui/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/voip/settings/ui/ay;->a:Lcom/viber/voip/settings/ui/ax;

    const v1, 0x7f0c03ea

    invoke-virtual {v0, v1}, Lcom/viber/voip/settings/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 188
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/phone/v;->a(Z)V

    .line 189
    const/4 v0, 0x1

    return v0
.end method
