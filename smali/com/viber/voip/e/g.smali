.class Lcom/viber/voip/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/viber/voip/e/a;

.field private b:Lcom/viber/voip/phone/call/k;

.field private c:I

.field private d:Lcom/viber/voip/util/fr;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/e/a;Lcom/viber/voip/phone/call/k;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/viber/voip/e/g;->a:Lcom/viber/voip/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/e/g;->c:I

    .line 75
    new-instance v0, Lcom/viber/voip/util/fr;

    sget-object v1, Lcom/viber/voip/dk;->f:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/viber/voip/util/fr;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    iput-object v0, p0, Lcom/viber/voip/e/g;->d:Lcom/viber/voip/util/fr;

    .line 80
    iput-object p2, p0, Lcom/viber/voip/e/g;->b:Lcom/viber/voip/phone/call/k;

    .line 81
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/e/g;->a(Lcom/viber/voip/phone/call/n;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/e/g;)Lcom/viber/voip/util/fr;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/e/g;->d:Lcom/viber/voip/util/fr;

    return-object v0
.end method

.method private a(Lcom/viber/voip/phone/call/n;)V
    .locals 4
    .parameter

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    .line 92
    iget v1, p0, Lcom/viber/voip/e/g;->c:I

    if-eq v1, v0, :cond_0

    .line 93
    iput v0, p0, Lcom/viber/voip/e/g;->c:I

    .line 95
    iget-object v1, p0, Lcom/viber/voip/e/g;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 98
    packed-switch v0, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/e/g;->a:Lcom/viber/voip/e/a;

    new-instance v3, Lcom/viber/voip/e/h;

    invoke-direct {v3, p0, v2, v1}, Lcom/viber/voip/e/h;-><init>(Lcom/viber/voip/e/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/e/g;->a:Lcom/viber/voip/e/a;

    new-instance v3, Lcom/viber/voip/e/i;

    invoke-direct {v3, p0, v2, v1}, Lcom/viber/voip/e/i;-><init>(Lcom/viber/voip/e/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V

    goto :goto_0

    .line 117
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/e/g;->a:Lcom/viber/voip/e/a;

    new-instance v3, Lcom/viber/voip/e/j;

    invoke-direct {v3, p0, v2, v1}, Lcom/viber/voip/e/j;-><init>(Lcom/viber/voip/e/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V

    .line 123
    iget-object v0, p0, Lcom/viber/voip/e/g;->d:Lcom/viber/voip/util/fr;

    invoke-virtual {v0}, Lcom/viber/voip/util/fr;->a()V

    goto :goto_0

    .line 126
    :pswitch_4
    iget-object v0, p0, Lcom/viber/voip/e/g;->a:Lcom/viber/voip/e/a;

    new-instance v1, Lcom/viber/voip/e/k;

    invoke-direct {v1, p0}, Lcom/viber/voip/e/k;-><init>(Lcom/viber/voip/e/g;)V

    invoke-static {v0, v1}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V

    goto :goto_0

    .line 134
    :pswitch_5
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    .line 135
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v1

    .line 136
    iget-object v2, p0, Lcom/viber/voip/e/g;->a:Lcom/viber/voip/e/a;

    new-instance v3, Lcom/viber/voip/e/l;

    invoke-direct {v3, p0, v0, v1}, Lcom/viber/voip/e/l;-><init>(Lcom/viber/voip/e/g;II)V

    invoke-static {v2, v3}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V

    goto :goto_0

    .line 144
    :pswitch_6
    iget-object v0, p0, Lcom/viber/voip/e/g;->d:Lcom/viber/voip/util/fr;

    invoke-virtual {v0}, Lcom/viber/voip/util/fr;->b()V

    .line 145
    iget-object v0, p0, Lcom/viber/voip/e/g;->a:Lcom/viber/voip/e/a;

    new-instance v1, Lcom/viber/voip/e/m;

    invoke-direct {v1, p0}, Lcom/viber/voip/e/m;-><init>(Lcom/viber/voip/e/g;)V

    invoke-static {v0, v1}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic b(Lcom/viber/voip/e/g;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/viber/voip/e/g;->f:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 158
    iget-object v0, p0, Lcom/viber/voip/e/g;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    .line 160
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 161
    :cond_0
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->x()J

    move-result-wide v2

    .line 162
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->B()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    .line 163
    :goto_0
    iget-boolean v4, p0, Lcom/viber/voip/e/g;->e:Z

    if-eq v4, v0, :cond_3

    .line 164
    iput-boolean v0, p0, Lcom/viber/voip/e/g;->e:Z

    .line 165
    iget-object v4, p0, Lcom/viber/voip/e/g;->a:Lcom/viber/voip/e/a;

    new-instance v5, Lcom/viber/voip/e/n;

    invoke-direct {v5, p0, v0}, Lcom/viber/voip/e/n;-><init>(Lcom/viber/voip/e/g;Z)V

    invoke-static {v4, v5}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V

    .line 173
    :cond_3
    iget-boolean v0, p0, Lcom/viber/voip/e/g;->f:Z

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->d()Z

    move-result v4

    if-eq v0, v4, :cond_4

    .line 174
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/e/g;->f:Z

    .line 175
    iget-object v0, p0, Lcom/viber/voip/e/g;->a:Lcom/viber/voip/e/a;

    new-instance v1, Lcom/viber/voip/e/o;

    invoke-direct {v1, p0}, Lcom/viber/voip/e/o;-><init>(Lcom/viber/voip/e/g;)V

    invoke-static {v0, v1}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V

    .line 183
    :cond_4
    iget-boolean v0, p0, Lcom/viber/voip/e/g;->e:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/viber/voip/e/g;->f:Z

    if-nez v0, :cond_5

    .line 184
    iget-object v0, p0, Lcom/viber/voip/e/g;->a:Lcom/viber/voip/e/a;

    new-instance v1, Lcom/viber/voip/e/p;

    invoke-direct {v1, p0, v2, v3}, Lcom/viber/voip/e/p;-><init>(Lcom/viber/voip/e/g;J)V

    invoke-static {v0, v1}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/a;Lcom/viber/voip/e/s;)V

    .line 192
    :cond_5
    return-void

    .line 162
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    check-cast p2, Lcom/viber/voip/phone/call/n;

    .line 87
    invoke-direct {p0, p2}, Lcom/viber/voip/e/g;->a(Lcom/viber/voip/phone/call/n;)V

    .line 88
    return-void
.end method
