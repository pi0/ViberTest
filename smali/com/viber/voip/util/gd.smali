.class Lcom/viber/voip/util/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lcom/viber/voip/util/fz;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/fz;ZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/viber/voip/util/gd;->c:Lcom/viber/voip/util/fz;

    iput-boolean p2, p0, Lcom/viber/voip/util/gd;->a:Z

    iput-wide p3, p0, Lcom/viber/voip/util/gd;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/viber/voip/util/gd;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/util/gd;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/e/u;->c(J)V

    .line 193
    :cond_0
    iget-wide v0, p0, Lcom/viber/voip/util/gd;->b:J

    new-instance v2, Lcom/viber/voip/util/ge;

    invoke-direct {v2, p0}, Lcom/viber/voip/util/ge;-><init>(Lcom/viber/voip/util/gd;)V

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/gg;->a(JLcom/viber/voip/util/gi;)V

    .line 205
    return-void
.end method
