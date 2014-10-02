.class Lcom/viber/voip/registration/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/SelectCountryActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/SelectCountryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/viber/voip/registration/cu;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/viber/voip/registration/cu;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {}, Lcom/viber/voip/registration/SelectCountryActivity;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/registration/SelectCountryActivity;->a(Lcom/viber/voip/registration/SelectCountryActivity;Ljava/util/List;)Ljava/util/List;

    .line 76
    iget-object v0, p0, Lcom/viber/voip/registration/cu;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-virtual {v0}, Lcom/viber/voip/registration/SelectCountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_selected_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/CountryCode;

    .line 77
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/viber/voip/registration/cu;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {v1}, Lcom/viber/voip/registration/SelectCountryActivity;->a(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/registration/cu;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {v1}, Lcom/viber/voip/registration/SelectCountryActivity;->a(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/registration/cu;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    new-instance v3, Lcom/viber/voip/registration/cv;

    invoke-direct {v3, p0, v0, v1}, Lcom/viber/voip/registration/cv;-><init>(Lcom/viber/voip/registration/cu;Lcom/viber/voip/registration/CountryCode;I)V

    invoke-virtual {v2, v3}, Lcom/viber/voip/registration/SelectCountryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    return-void

    .line 77
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
