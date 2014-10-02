.class Lcom/viber/service/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/service/n;


# direct methods
.method constructor <init>(Lcom/viber/service/n;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/viber/service/o;->a:Lcom/viber/service/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/viber/service/o;->a:Lcom/viber/service/n;

    iget-object v0, v0, Lcom/viber/service/n;->a:Lcom/viber/service/VoipConnectorService;

    invoke-virtual {v0}, Lcom/viber/service/VoipConnectorService;->a()V

    .line 196
    return-void
.end method
