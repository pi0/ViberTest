.class Lcom/viber/voip/util/ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/settings/m;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/fz;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/fz;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/viber/voip/util/ga;->a:Lcom/viber/voip/util/fz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Notifier. on tab badges Shared Preference Changed key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/fz;->a(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/viber/voip/util/ga;->a:Lcom/viber/voip/util/fz;

    invoke-static {v0, p2}, Lcom/viber/voip/util/fz;->a(Lcom/viber/voip/util/fz;Ljava/lang/String;)V

    .line 45
    return-void
.end method
