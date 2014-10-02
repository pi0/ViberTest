.class Lcom/viber/voip/util/gb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/fz;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/fz;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/viber/voip/util/gb;->a:Lcom/viber/voip/util/fz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/viber/voip/util/gb;->a:Lcom/viber/voip/util/fz;

    invoke-virtual {v0}, Lcom/viber/voip/util/fz;->d()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/gb;->a:Lcom/viber/voip/util/fz;

    invoke-static {v0}, Lcom/viber/voip/util/fz;->a(Lcom/viber/voip/util/fz;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "recents_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 175
    :cond_0
    new-instance v0, Lcom/viber/voip/util/gc;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/gc;-><init>(Lcom/viber/voip/util/gb;)V

    invoke-static {v0}, Lcom/viber/voip/util/gg;->a(Lcom/viber/voip/util/gi;)V

    .line 184
    return-void
.end method
