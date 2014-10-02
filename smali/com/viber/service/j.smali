.class Lcom/viber/service/j;
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
    .line 82
    iput-object p1, p0, Lcom/viber/service/j;->a:Lcom/viber/service/VoipConnectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/viber/service/j;->a:Lcom/viber/service/VoipConnectorService;

    invoke-static {v0}, Lcom/viber/service/VoipConnectorService;->a(Lcom/viber/service/VoipConnectorService;)V

    .line 87
    return-void
.end method
