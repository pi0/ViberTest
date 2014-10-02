.class Lcom/viber/service/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/service/VoipConnectorService;


# direct methods
.method constructor <init>(Lcom/viber/service/VoipConnectorService;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/viber/service/l;->a:Lcom/viber/service/VoipConnectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/viber/service/l;->a:Lcom/viber/service/VoipConnectorService;

    const-string/jumbo v1, "VersionCheck received , checking viber version..."

    invoke-static {v0, v1}, Lcom/viber/service/VoipConnectorService;->a(Lcom/viber/service/VoipConnectorService;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/viber/service/l;->a:Lcom/viber/service/VoipConnectorService;

    invoke-static {v0}, Lcom/viber/service/VoipConnectorService;->b(Lcom/viber/service/VoipConnectorService;)V

    .line 171
    return-void
.end method
