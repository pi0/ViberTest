.class public abstract Lcom/viber/voip/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:I

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public aa:Ljava/lang/String;

.field public ab:I

.field public ac:Ljava/lang/String;

.field final synthetic ad:Lcom/viber/voip/bc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/viber/voip/bc;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/voip/bd;->ad:Lcom/viber/voip/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "https://r.viber.com/rid/start?r="

    iput-object v0, p0, Lcom/viber/voip/bd;->j:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "http://www.viber.com/howto/secure_calls"

    iput-object v0, p0, Lcom/viber/voip/bd;->P:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "http://update.viber.com/viber/viber.php?function=ClientUpdate"

    iput-object v0, p0, Lcom/viber/voip/bd;->Y:Ljava/lang/String;

    return-void
.end method
