.class abstract Lcom/viber/voip/billing/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field h:Ljava/lang/String;

.field final synthetic i:Lcom/viber/voip/billing/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/ap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/viber/voip/billing/bl;->i:Lcom/viber/voip/billing/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/viber/voip/billing/bl;->h:Ljava/lang/String;

    .line 207
    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method a(Lcom/viber/voip/billing/bo;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/viber/voip/billing/bl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/viber/voip/billing/bl;->i:Lcom/viber/voip/billing/ap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Executing task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/billing/bl;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/viber/voip/billing/bl;->a()V

    .line 218
    return-void
.end method
