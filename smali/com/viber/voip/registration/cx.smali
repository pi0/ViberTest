.class Lcom/viber/voip/registration/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/SelectCountryActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/SelectCountryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/viber/voip/registration/cx;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 173
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/viber/voip/registration/cx;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/registration/SelectCountryActivity;->a(Lcom/viber/voip/registration/SelectCountryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/viber/voip/registration/cx;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {v1}, Lcom/viber/voip/registration/SelectCountryActivity;->c(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    iget-object v1, p0, Lcom/viber/voip/registration/cx;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {v1}, Lcom/viber/voip/registration/SelectCountryActivity;->c(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method
