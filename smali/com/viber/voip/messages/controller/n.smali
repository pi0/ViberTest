.class Lcom/viber/voip/messages/controller/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/q;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;

.field final synthetic c:Lcom/viber/voip/messages/controller/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c;ILcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/viber/voip/messages/controller/n;->c:Lcom/viber/voip/messages/controller/c;

    iput p2, p0, Lcom/viber/voip/messages/controller/n;->a:I

    iput-object p3, p0, Lcom/viber/voip/messages/controller/n;->b:Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/GroupController;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    iget v0, p0, Lcom/viber/voip/messages/controller/n;->a:I

    iget-object v1, p0, Lcom/viber/voip/messages/controller/n;->b:Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/GroupController;->a(ILcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;)V

    .line 93
    return-void
.end method
