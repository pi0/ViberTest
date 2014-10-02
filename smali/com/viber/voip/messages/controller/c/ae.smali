.class Lcom/viber/voip/messages/controller/c/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/am;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/ae;->c:Lcom/viber/voip/messages/controller/c/e;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/c/ae;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/viber/voip/messages/controller/c/ae;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/de;)V
    .locals 2
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/ae;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/viber/voip/messages/controller/c/ae;->b:Z

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/de;->a(Ljava/lang/String;Z)V

    .line 191
    return-void
.end method
