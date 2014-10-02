.class Lcom/viber/voip/messages/controller/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/q;


# instance fields
.field final synthetic a:I

.field final synthetic b:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

.field final synthetic c:Lcom/viber/voip/messages/controller/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c;I[Lcom/viber/voip/messages/controller/GroupController$GroupMember;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/viber/voip/messages/controller/i;->c:Lcom/viber/voip/messages/controller/c;

    iput p2, p0, Lcom/viber/voip/messages/controller/i;->a:I

    iput-object p3, p0, Lcom/viber/voip/messages/controller/i;->b:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/GroupController;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/viber/voip/messages/controller/i;->a:I

    iget-object v1, p0, Lcom/viber/voip/messages/controller/i;->b:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/GroupController;->a(I[Lcom/viber/voip/messages/controller/GroupController$GroupMember;)V

    .line 38
    return-void
.end method
