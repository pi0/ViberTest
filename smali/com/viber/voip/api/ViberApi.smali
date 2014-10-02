.class public Lcom/viber/voip/api/ViberApi;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# static fields
.field private static a:Lcom/viber/voip/api/ViberApi;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/viber/voip/e/q;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 135
    new-instance v0, Lcom/viber/voip/api/a;

    invoke-direct {v0, p0}, Lcom/viber/voip/api/a;-><init>(Lcom/viber/voip/api/ViberApi;)V

    iput-object v0, p0, Lcom/viber/voip/api/ViberApi;->c:Lcom/viber/voip/e/q;

    .line 111
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/api/ViberApi;->b:Landroid/content/Context;

    .line 112
    return-void
.end method

.method public static a()Lcom/viber/voip/api/ViberApi;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/viber/voip/api/ViberApi;->a:Lcom/viber/voip/api/ViberApi;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/viber/voip/api/ViberApi;

    invoke-direct {v0}, Lcom/viber/voip/api/ViberApi;-><init>()V

    sput-object v0, Lcom/viber/voip/api/ViberApi;->a:Lcom/viber/voip/api/ViberApi;

    .line 118
    :cond_0
    sget-object v0, Lcom/viber/voip/api/ViberApi;->a:Lcom/viber/voip/api/ViberApi;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/api/ViberApi;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/viber/voip/api/ViberApi;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.API_MISSED_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 193
    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    :cond_0
    invoke-direct {p0, v0}, Lcom/viber/voip/api/ViberApi;->a(Landroid/content/Intent;)V

    .line 196
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onCallMissed(JLjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p3, p4}, Lcom/viber/voip/api/ViberApi;->a(Ljava/lang/String;I)V

    .line 162
    return-void
.end method

.method public onGetMissedCalls([Lcom/viber/jni/CMissedCall;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 170
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    .line 171
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 172
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/viber/jni/CMissedCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 174
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 178
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/api/ViberApi;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 182
    :cond_2
    return v2
.end method

.method public onMediaReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    const/4 v1, 0x1

    move/from16 v0, p10

    if-ne v0, v1, :cond_2

    const/4 v5, 0x1

    .line 226
    :goto_0
    const/4 v1, 0x3

    move/from16 v0, p10

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    .line 227
    :goto_1
    if-nez v5, :cond_0

    if-eqz v1, :cond_1

    .line 228
    :cond_0
    new-instance v1, Lcom/viber/voip/api/b;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object/from16 v7, p14

    invoke-direct/range {v1 .. v7}, Lcom/viber/voip/api/b;-><init>(Lcom/viber/voip/api/ViberApi;JZLjava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/de;)V

    .line 270
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 225
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 226
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onTextReceived(JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.API_TEXT_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v1, "phone_number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-direct {p0, v0}, Lcom/viber/voip/api/ViberApi;->a(Landroid/content/Intent;)V

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public onVideoReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    const/4 v10, 0x3

    move-object v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p14

    move-object/from16 v14, p13

    invoke-virtual/range {v0 .. v14}, Lcom/viber/voip/api/ViberApi;->onMediaReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
