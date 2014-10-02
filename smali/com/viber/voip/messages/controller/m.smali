.class Lcom/viber/voip/messages/controller/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/q;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

.field final synthetic d:Lcom/viber/voip/messages/controller/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c;IJ[Lcom/viber/voip/messages/controller/GroupController$GroupMember;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/viber/voip/messages/controller/m;->d:Lcom/viber/voip/messages/controller/c;

    iput p2, p0, Lcom/viber/voip/messages/controller/m;->a:I

    iput-wide p3, p0, Lcom/viber/voip/messages/controller/m;->b:J

    iput-object p5, p0, Lcom/viber/voip/messages/controller/m;->c:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/GroupController;)V
    .locals 4
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/viber/voip/messages/controller/m;->a:I

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/m;->b:J

    iget-object v3, p0, Lcom/viber/voip/messages/controller/m;->c:[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/GroupController;->a(IJ[Lcom/viber/voip/messages/controller/GroupController$GroupMember;)V

    .line 82
    return-void
.end method
